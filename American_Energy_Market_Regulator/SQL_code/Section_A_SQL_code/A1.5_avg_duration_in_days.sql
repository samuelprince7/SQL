SELECT 
  Status, Reason, COUNT(*) AS Total_Number_Outage_Events,
  ROUND(((AVG(TIMESTAMPDIFF(Minute,Start_Time,End_Time)))/60)/24,2) AS Average_Outage_Duration_Time_Days,
  YEAR(Start_Time) AS Year

FROM AEMR
WHERE Status='Approved'
GROUP BY Status, Reason, Year
ORDER BY Reason, Year
