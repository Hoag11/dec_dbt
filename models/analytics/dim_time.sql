SELECT
    {{ dbt_utils.generate_surrogate_key([
        'date'
        ,'timestamp'
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
