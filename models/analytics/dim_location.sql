SELECT
    {{dbt_utils.generate_surrogate_key([
        'ip'
        ,'user_agent'
        ,'_id'
        ,'order_id'])}} 
    AS location_id
    ,ip
    ,city
    ,country_short
    ,country_long
    ,region
FROM {{ref("stg_dim_locate")}}