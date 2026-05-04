-- Query 1: Fast Food Locations
-- Purpose: Extract fast food locations in Idaho for spatial distribution analysis

-- Expected Output:
-- - geom

SELECT
    geom
FROM
    pois
WHERE
    fclass = 'fast_food';
