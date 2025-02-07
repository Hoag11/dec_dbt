SELECT
    {{dbt_utils.generate_surrogate_key([
        'ip'
        ,'user_agent'
    ])}} AS user_id
    ,ip
    ,user_agent
    ,resolution
    ,user_id_db
    ,device_id
    ,email_address
FROM {{ref("stg_dim_users")}}