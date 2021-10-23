SELECT
  SUM(CASE
      WHEN Status = "Approved" AND Reason = "Forced" THEN 1 
      ELSE 0 END) AS Total_Number_Forced_Outage_Events,
  SUM(CASE
      WHEN Status = "Approved" THEN 1
      ELSE 0 END ) AS Total_Number_Outage_Events,
  ROUND(SUM(CASE
      WHEN Status = "Approved" AND Reason ="Forced" THEN 1
      ELSE 0 END) *100/
      SUM(CASE
      WHEN Status = "Approved" THEN 1
      ELSE 0 END ),2) AS Forced_Outage_Percentage,

  Year(Start_Time) AS Year
FROM AEMR
GROUP BY Year(Start_Time);
