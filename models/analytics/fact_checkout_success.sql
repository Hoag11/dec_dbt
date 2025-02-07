SELECT
    g.order_id
    ,u.user_id
    ,l.location_id
    ,t.time_id
FROM {{ source('glamira','dec_raw_data')}} g
JOIN {{ ref("dim_user")}} u
    ON g.device_id = u.device_id 
JOIN {{ ref("dim_location")}} l
    ON g.ip = l.ip
JOIN {{ ref("dim_time")}} t
    ON g.local_time = t.local_time
WHERE g.collection = 'checkout_success'