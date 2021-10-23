SELECT pk,
	publisher,
    global_sales
FROM VG_Sales
WHERE publisher = 'Electronic Arts' AND global_sales >= 5.0 OR publisher = 'Activision' AND global_sales >= 5.0 
GROUP BY pk
ORDER BY publisher, global_sales 