SELECT 
	COUNT(DISTINCT pk) AS number_of_games,
    ROUND(SUM(global_sales),2) AS world_wide_sales,
    publisher
FROM VG_Sales
WHERE publisher = 'Electronic Arts' OR publisher = 'Nintendo' OR publisher = 'Activision' OR publisher = 'Ubisoft'
GROUP BY publisher
HAVING SUM(global_sales) >= 5.0 
ORDER BY ROUND(SUM(global_sales),2) DESC
