-- Your answer here
SELECT 
  COUNT(status) AS Total_Number_Outage_Events,
  Status,
  Reason
FROM AEMR
WHERE YEAR(Start_Time) ='2016' AND Status = 'Approved'
GROUP BY reason
ORDER BY reason 
