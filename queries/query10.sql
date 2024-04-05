-- Name the average height, length, and speed of each manufacturer's rollercoasters

SELECT
    MK.make_name,
    ROUND(AVG(MD.height), 1) AS AvgHeight, 
    ROUND(AVG(MD.length), 1) AS AvgLength, 
    ROUND(AVG(MD.speed), 1) AS AvgTopSpeed
FROM xMake MK
JOIN xCoasterType CT ON CT.make_num = MK.make_num 
JOIN xModel MD ON MD.mod_num = CT.mod_num 
GROUP BY MK.make_name
ORDER BY AvgHeight DESC;    