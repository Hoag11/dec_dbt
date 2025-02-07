SELECT
    {{ dbt_utils.generate_surrogate_key([
        'utm_source',
        'utm_medium',
        'referrer_url'
    ]) }} as marketing_id
    ,utm_source
    ,utm_medium
    ,referrer_url
    ,key_search
    ,recommendation
    ,recommendation_product_id
    ,recommendation_product_position
    ,recommendation_clicked_position
FROM {{ ref('stg_dim_marketing') }}