SELECT 
    time_stamp AS timestamp
    ,ip
    ,local_time
    ,DATE(local_time) AS date
    ,EXTRACT(YEAR FROM (local_time)) AS year
    ,EXTRACT(QUARTER FROM (local_time)) AS quarter
    ,EXTRACT(MONTH FROM (local_time)) AS month
    ,FORMAT_TIMESTAMP('%B', (local_time)) AS month_name
    ,EXTRACT(WEEK FROM (local_time)) AS week_of_year
    ,EXTRACT(DAY FROM (local_time)) AS day
    ,EXTRACT(DAYOFWEEK FROM (local_time)) AS day_of_week
    ,FORMAT_TIMESTAMP('%A', (local_time)) AS day_name
    ,order_id
FROM {{source('glamira','dec_raw_data')}}
WHERE collection = 'checkout_success'