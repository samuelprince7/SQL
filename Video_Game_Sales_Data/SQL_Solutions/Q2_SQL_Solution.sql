SELECT platform, ROUND(SUM(global_sales),2) AS world_wide_sales
FROM VG_Sales
GROUP BY platform
ORDER BY SUM(global_sales) DESC 