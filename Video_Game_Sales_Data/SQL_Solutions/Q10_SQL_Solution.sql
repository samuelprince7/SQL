SELECT genre,
	COUNT(DISTINCT pk) AS num_of_games,
    ROUND(count(*) * 100.0 / sum(count(*)) over(),2)AS genre_global_percentage,
    ROUND(SUM(global_sales),2)
FROM VG_Sales
GROUP BY genre
ORDER BY num_of_games DESC