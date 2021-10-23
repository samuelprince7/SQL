SELECT 
  COUNT(*) AS Total_Number_Outage_Events,

  Reason,
  Year(Start_Time) As Year

FROM AEMR
WHERE Status = 'Approved' AND Year(Start_Time) IN ('2016','2017') AND Reason = 'Forced'
GROUP BY Reason, Year
ORDER BY Year;
