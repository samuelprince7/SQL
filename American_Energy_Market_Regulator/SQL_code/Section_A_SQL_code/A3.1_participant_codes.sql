SELECT 
  COUNT(*) AS Total_Number_Outage_Events,
  Participant_Code,
  Status,
  Year(Start_Time) As Year

FROM AEMR
WHERE Status = 'Approved' AND Year(Start_Time) IN ('2016','2017')
GROUP BY Participant_Code, Status, Year
ORDER BY Year, Participant_Code, Total_Number_Outage_Events DESC;
