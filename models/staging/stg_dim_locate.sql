SELECT
    id as ip
    ,CASE WHEN city='-' THEN 'undefined' ELSE city END AS city
    ,CASE WHEN country_long='-' THEN 'undefined' ELSE country_long END AS country_long
    ,CASE WHEN country_short='-' THEN 'undefined' ELSE country_short END AS country_short
    ,CASE WHEN region='-' THEN 'undefined' ELSE region END AS region
FROM {{source('glamira','dec_location_raw')}}
