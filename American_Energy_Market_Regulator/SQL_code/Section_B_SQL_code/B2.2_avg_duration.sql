SELECT Status, Reason,
  Year(Start_Time) AS Year,
  ROUND(AVG(Outage_MW),2) AS Avg_Outage_MW_Loss,
  ROUND(AVG(TIMESTAMPDIFF(Minute,Start_Time, End_Time)),2) AS Average_Outage_Duration_Time_Minutes 

FROM AEMR
WHERE Status = 'Approved' 
GROUP BY Status, Reason, Year(Start_Time)
ORDER BY Year(Start_Time), Reason;
