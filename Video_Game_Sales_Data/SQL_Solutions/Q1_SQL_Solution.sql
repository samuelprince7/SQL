SELECT publisher, ROUND(SUM(global_sales),2) 
FROM VG_Sales
GROUP BY publisher
ORDER BY SUM(global_sales) DESC 
LIMIT 10
                      
