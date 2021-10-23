SELECT publisher,
	COUNT(DISTINCT pk) AS number_of_games
FROM VG_Sales
GROUP BY publisher
ORDER BY number_of_games DESC