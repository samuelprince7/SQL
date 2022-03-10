SELECT publisher, ROUND(SUM(global_sales),2) AS world_wide_sales, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(),2)AS percentage_of_international_sales
FROM VG_Sales
GROUP BY publisher
ORDER BY world_wide_sales DESC
