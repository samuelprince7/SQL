SELECT year, platform, ROUND(SUM(global_sales),2) AS world_wide_sales
FROM VG_Sales
GROUP BY year
ORDER BY world_wide_sales DESC 