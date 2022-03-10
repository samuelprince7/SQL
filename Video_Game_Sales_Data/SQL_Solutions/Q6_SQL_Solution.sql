SELECT pk,
	publisher,
    SUM(global_sales)
FROM VG_Sales
WHERE publisher = 'Electronic Arts' OR publisher = 'Activision' 
GROUP BY pk, publisher
HAVING SUM(global_sales) >= 5.0 
ORDER BY publisher, SUM(global_sales)
