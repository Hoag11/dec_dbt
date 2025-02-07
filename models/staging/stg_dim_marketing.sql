SELECT
    COALESCE(utm_source,'undefined') AS utm_source
    ,COALESCE(utm_medium, 'undefined') AS utm_medium
    ,COALESCE(key_search, 'undefined') AS key_search
    ,COALESCE(refferer_url, 'undefined') AS refferer_url
    ,recommendation
    ,recommendation_product_id
    ,recommendation_product_position
    ,recommendation_clicked_position
FROM {{source('glamira','dec_raw_data')}}
