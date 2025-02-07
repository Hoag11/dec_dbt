SELECT
    {{dbt_utils.generate_surrogate_key([
        'city'
        ,'country_short'
    ])}} AS location_id
    ,ip
    ,city
    ,country_short
    ,country_long
    ,region
FROM {{ref("stg_dim_locate")}}