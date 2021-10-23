SELECT platform,
	COUNT(DISTINCT pk) AS num_of_games,
    ROUND(count(*) * 100.0 / sum(count(*)) over(),2)AS platform_global_percentage
FROM VG_Sales
GROUP BY platform
ORDER BY num_of_games DESC