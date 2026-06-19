-- Highest rated restaurants
SELECT restaurant_name, rating
FROM zomato_data
ORDER BY rating DESC
LIMIT 10;


-- Average rating by location
SELECT location, AVG(rating) avg_rating
FROM zomato_data
GROUP BY location
ORDER BY avg_rating DESC;


-- Expensive restaurants
SELECT restaurant_name, average_price
FROM zomato_data
ORDER BY average_price DESC;


-- Fast delivery
SELECT restaurant_name, average_delivery_time
FROM zomato_data
ORDER BY average_delivery_time ASC;


-- Popular cuisines
SELECT cuisine, COUNT(*) total
FROM zomato_data
GROUP BY cuisine
ORDER BY total DESC;


-- Safety analysis
SELECT safety_measure, COUNT(*)
FROM zomato_data
GROUP BY safety_measure;


-- Premium + highly rated
SELECT *
FROM zomato_data
WHERE average_price > 300
AND rating > 4;