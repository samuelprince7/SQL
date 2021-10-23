SELECT Status,
  COUNT(*) AS Total_Number_Outage_Events,
  Month(Start_Time) AS Month,
  Year(Start_Time) As Year

FROM AEMR
WHERE Status = 'Approved' AND Year(Start_Time) IN ('2016','2017')
GROUP BY Status, Month, Year
ORDER BY Month, Year;
