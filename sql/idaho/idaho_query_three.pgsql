-- Query 3: Canal Density by County
-- Purpose: Calculate canal density (km per sq km) in each Idaho county

-- Expected Output:
-- - county_name
-- - total_canal_length_km
-- - county_area_sq_km
-- - canal_density_km_per_sq_km
-- - geom

WITH county_metrics AS (
    SELECT
        aa.name AS county_name,
        SUM(ST_Length(ST_Intersection(r.geom, aa.geom)::geography)) / 1000 AS total_canal_length_km,
        ST_Area(aa.geom::geography) / 1000000 AS county_area_sq_km,
        aa.geom
    FROM
        adminareas_a AS aa
    JOIN
        waterways AS r ON ST_Intersects(aa.geom, r.geom)
    WHERE
        aa.fclass = 'admin_level6'
        AND r.fclass = 'canal'
    GROUP BY
        aa.name, aa.geom
)

SELECT
    county_name,
    total_canal_length_km,
    county_area_sq_km,
    total_canal_length_km / county_area_sq_km AS canal_density_km_per_sq_km,
    geom
FROM
    county_metrics
ORDER BY
   canal_density_km_per_sq_km DESC;
