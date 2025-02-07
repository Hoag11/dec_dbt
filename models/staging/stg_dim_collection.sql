SELECT 
  cart_products 
FROM {{source('glamira','dec_raw_data')}}
WHERE `collection` = "checkout_success"
