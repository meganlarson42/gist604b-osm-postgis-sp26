-- Query 2: Forest Area by County
-- Purpose: Calculate the total area of forests in each Idaho county

-- Expected Output:
-- - county_name
-- - forest_area_sq_km
-- - geom

SELECT
    aa.name AS county_name,
    SUM(ST_Area(ST_Intersection(l.geom, aa.geom)::geography)) / 1000000 AS forest_area_sq_km,
    aa.geom
FROM
    adminareas_a AS aa
JOIN
    landuse_a AS l ON ST_Intersects(aa.geom, l.geom)
WHERE
    aa.fclass = 'admin_level6'
    AND l.fclass = 'forest'
GROUP BY
    aa.name, aa.geom
ORDER BY
    forest_area_sq_km DESC;
