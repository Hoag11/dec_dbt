SELECT
    {{ dbt_utils.generate_surrogate_key([
        'ip'
        ,'local_time'
        ,'timestamp'
        ,'order_id'
    ])}} as time_id
    ,local_time
    ,timestamp
    ,date
    ,year
    ,quarter
    ,month
    ,month_name
    ,week_of_year
    ,day
    ,day_of_week
    ,day_name
FROM {{ ref("stg_dim_time") }}
