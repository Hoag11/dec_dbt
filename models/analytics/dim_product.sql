SELECT
    {{ dbt_utils.generate_surrogate_key([
        'product_id',
        'product_name'
    ]) }} as product_key_id,
    product_id,
    product_name,
    translated_name,
    url
FROM {{ ref('stg_dim_product') }}