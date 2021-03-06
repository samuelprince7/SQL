SELECT Status,
  Reason,
  COUNT(Status) AS Total_Number_Outage_Events,
  Month(Start_Time) AS Month
FROM AEMR
WHERE Status ='Approved' AND Year(Start_Time) IN (2016)
GROUP BY Status, Reason, Month(Start_Time)
ORDER BY Month, Reason ASC;
