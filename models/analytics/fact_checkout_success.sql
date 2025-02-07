SELECT
    g.order_id
    ,u.user_id
    ,l.location_id
    ,t.time_id
    ,m.marketing_id
FROM {{ source('glamira','dec_raw_data')}} g
JOIN {{ ref("dim_user")}} u
    ON g.ip = u.ip 
    AND g.user_agent = u.user_agent    
JOIN {{ ref("dim_location")}} l
    ON g.ip = l.ip
JOIN {{ ref("dim_time")}} t
    ON g.local_time = t.local_time
JOIN {{ ref("dim_marketing")}} m
    ON g.utm_source = m.utm_source
    AND g.utm_medium = m.utm_medium
    AND g.refferer_url = m.referrer_url
WHERE g.collection = 'checkout_success'