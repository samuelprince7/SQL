SELECT publisher, global_sales, ROUND(count(*) * 100.0 / sum(count(*)) over(),2)AS percentage_of_international_sales
FROM VG_Sales
GROUP BY publisher
ORDER BY global_sales DESC