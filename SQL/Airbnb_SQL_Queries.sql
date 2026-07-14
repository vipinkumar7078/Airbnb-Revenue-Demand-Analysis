-- ==========================================
-- Airbnb Revenue & Demand Analysis
-- SQL Analysis Queries
-- Author: Vipin Kumar
-- ==========================================

-- 1. Total Listings
SELECT COUNT(*) AS Total_Listings
FROM ab_us_2024 ;

-- 2. Total Cities
SELECT COUNT(DISTINCT city) AS Total_Cities
FROM ab_us_2024 ;

-- 3. Average Price
SELECT ROUND(AVG(price),2) AS Average_Price
FROM ab_us_2024 ;

-- 4. Maximum Price
SELECT MAX(price) AS Maximum_Price
FROM ab_us_2024 ;

-- 5. Minimum Price
SELECT MIN(price) AS Minimum_Price
FROM ab_us_2024 ;

-- 6. Average Availability
SELECT ROUND(AVG(availability_365),2) AS Average_Availability
FROM ab_us_2024 ;

-- 7. Total Reviews
SELECT SUM(number_of_reviews) AS Total_Reviews
FROM ab_us_2024 ;

-- 8. Average Reviews
SELECT ROUND(AVG(number_of_reviews),2) AS Average_Reviews
FROM ab_us_2024 ;

-- 9. Top 10 Cities by Listings
SELECT city,
COUNT(*) AS Total_Listings
FROM ab_us_2024 
GROUP BY city
ORDER BY Total_Listings DESC
LIMIT 10;

-- 10. Top 10 Cities by Average Price
SELECT city,
ROUND(AVG(price),2) AS Avg_Price
FROM ab_us_2024 
GROUP BY city
ORDER BY Avg_Price DESC
LIMIT 10;

-- 11. Listings by Room Type
SELECT room_type,
COUNT(*) AS Listings
FROM ab_us_2024 
GROUP BY room_type;

-- 12. Average Price by Room Type
SELECT room_type,
ROUND(AVG(price),2) AS Avg_Price
FROM ab_us_2024 
GROUP BY room_type;

-- 13. Top 10 Hosts
SELECT host_name,
COUNT(*) AS Listings
FROM ab_us_2024 
GROUP BY host_name
ORDER BY Listings DESC
LIMIT 10;

-- 14. Top 10 Expensive Listings
SELECT name,
city,
price
FROM ab_us_2024 
ORDER BY price DESC
LIMIT 10;

-- 15. Most Reviewed Listings
SELECT name,
number_of_reviews
FROM ab_us_2024 
ORDER BY number_of_reviews DESC
LIMIT 10;

-- 16. Average Minimum Nights
SELECT ROUND(AVG(minimum_nights),2)
AS Avg_Minimum_Nights
FROM ab_us_2024 ;

-- 17. Listings Available More Than 300 Days
SELECT COUNT(*)
FROM ab_us_2024 
WHERE availability_365 >300;

-- 18. Listings With Price Above Average
SELECT *
FROM airbnb
WHERE price >
(
SELECT AVG(price)
FROM ab_us_2024 
);

-- 19. City-wise Average Availability
SELECT city,
ROUND(AVG(availability_365),2)
FROM ab_us_2024 
GROUP BY city
ORDER BY AVG(availability_365) DESC;

-- 20. Room Type Wise Reviews
SELECT room_type,
SUM(number_of_reviews) AS Reviews
FROM ab_us_2024 
GROUP BY room_type;

-- 21. Top Hosts by Reviews
SELECT host_name,
SUM(number_of_reviews) AS Reviews
FROM ab_us_2024 
GROUP BY host_name
ORDER BY Reviews DESC
LIMIT 10;

-- 22. Average Reviews Per Month
SELECT ROUND(AVG(reviews_per_month),2)
FROM ab_us_2024 ;

-- 23. Top Cities by Reviews
SELECT city,
SUM(number_of_reviews)
FROM ab_us_2024 
GROUP BY city
ORDER BY SUM(number_of_reviews) DESC
LIMIT 10;

-- 24. Listings by Host Listing Count
SELECT calculated_host_listings_count,
COUNT(*)
FROM ab_us_2024 
GROUP BY calculated_host_listings_count
ORDER BY calculated_host_listings_count DESC;

-- 25. Top 10 Listings by Booking Demand
SELECT name,
number_of_reviews_ltm
FROM ab_us_2024 
ORDER BY number_of_reviews_ltm DESC
LIMIT 10;

-- End of SQL Queries