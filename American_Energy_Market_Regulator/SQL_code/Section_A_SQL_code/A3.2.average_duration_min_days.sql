SELECT 
  Participant_Code,
  Status,
  Year(Start_Time) As Year,
  ROUND(AVG((TIMESTAMPDIFF(MINUTE,Start_Time, End_Time)/60)/24),2) AS Average_Outage_Duration_Time_Days

FROM AEMR
WHERE Status = 'Approved' AND Year(Start_Time) IN ('2016','2017')
GROUP BY Participant_Code, Year
ORDER BY Year, Average_Outage_Duration_Time_Days DESC;
