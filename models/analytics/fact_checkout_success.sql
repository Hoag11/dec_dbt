SELECT
    g.order_id
    ,u.user_id
    ,l.location_id
    ,t.time_id
FROM {{ source('glamira','dec_raw_data')}} g
JOIN {{ ref("dim_user") }} u 
        ON {{ dbt_utils.generate_surrogate_key(['g._id', 'g.order_id']) }} = u.user_id
JOIN {{ ref("dim_location") }} l 
        ON {{ dbt_utils.generate_surrogate_key(['g.ip', 'g.user_agent', 'g._id', 'g.order_id']) }} = l.location_id
JOIN {{ ref("dim_time") }} t 
        ON {{ dbt_utils.generate_surrogate_key(['g.ip', 'g.local_time', 'g.time_stamp', 'g.order_id']) }} = t.time_id
WHERE g.collection = 'checkout_success'