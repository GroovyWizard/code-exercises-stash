SELECT COUNT(id) AS count_products_types, producer 
FROM products 
GROUP BY producer 
ORDER BY COUNT (id) DESC;