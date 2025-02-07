SELECT
    ip
    ,user_agent
    ,resolution
    ,user_id_db
    ,device_id
    ,COALESCE(email_address, 'undefined') AS email_address
    ,order_id
    ,_id
FROM {{source('glamira','dec_raw_data')}}
WHERE collection = 'checkout_success'