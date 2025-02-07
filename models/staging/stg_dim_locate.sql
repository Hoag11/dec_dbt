SELECT
    l.id as ip
    ,CASE WHEN l.city='-' THEN 'undefined' ELSE city END AS city
    ,CASE WHEN l.country_long='-' THEN 'undefined' ELSE country_long END AS country_long
    ,CASE WHEN l.country_short='-' THEN 'undefined' ELSE country_short END AS country_short
    ,CASE WHEN l.region='-' THEN 'undefined' ELSE region END AS region
    ,r.order_id
    ,r.user_agent
    ,r._id
FROM {{source('glamira','dec_location_raw')}} l
JOIN {{source('glamira','dec_raw_data')}} r
    ON l.id = r.ip
WHERE r.collection = 'checkout_success'
