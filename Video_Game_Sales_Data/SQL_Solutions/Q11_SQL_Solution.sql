SELECT platform, publisher,
	COUNT(DISTINCT pk) AS num_of_games,
    ROUND(count(*) * 100.0 / sum(count(*)) over(),2)AS platform_global_percentage
FROM VG_Sales
WHERE publisher = 'Electronic Arts' OR publisher = 'Nintendo' OR publisher = 'Activision' OR publisher = 'Ubisoft'
GROUP BY platform, publisher
ORDER BY num_of_games DESC