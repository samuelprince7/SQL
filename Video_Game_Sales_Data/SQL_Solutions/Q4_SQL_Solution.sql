SELECT genre,
	COUNT(DISTINCT pk) AS number_of_games
FROM VG_Sales
GROUP BY genre
ORDER BY number_of_games DESC