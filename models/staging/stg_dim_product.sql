SELECT 
        product_id 
        ,current_url AS url
        ,COALESCE(product_name, 'undefined') AS product_name
        ,COALESCE(translated_product_name, 'undefined') AS translated_name
FROM {{source('glamira','dec_product_raw')}}