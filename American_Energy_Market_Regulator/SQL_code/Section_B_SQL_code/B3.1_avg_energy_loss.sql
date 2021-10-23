SELECT Participant_Code, Status, Year(Start_Time) AS Year,
  ROUND(AVG(Outage_MW),2) AS Avg_Outage_MW_Loss,
  ROUND(AVG((TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60)/24),2) AS Average_Outage_Duration_Time_Days

FROM AEMR
WHERE Status='Approved' AND Reason ='Forced'
GROUP BY Participant_Code, Status, Reason, Year(Start_Time)
ORDER BY Year(Start_Time) ASC, ROUND(AVG(Outage_MW),2) DESC;
