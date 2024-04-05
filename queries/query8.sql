-- List each relocated coaster with it's current and former parks, 
-- along with any coasters of the same make also at it's current park.

SELECT
    CO.coast_name AS CoasterName, 
    PK.park_name AS CurrentPark, 
    PKR.park_name AS FormerPark
FROM xRelocatedFrom RF
JOIN xCoaster CO ON RF.coast_num = CO.coast_num 
JOIN xPark PK ON CO.park_num = PK.park_num
JOIN xPark PKR ON RF.child_num = PKR.park_num
JOIN xCoasterType CT ON CO.coast_num = CT.coast_num 
UNION
SELECT
    CO2.coast_name AS CoasterName, 
    PK.park_name AS CurrentPark, 
    NULL AS FormerPark
FROM xRelocatedFrom RF
JOIN xCoaster CO ON RF.coast_num = CO.coast_num
JOIN xPark PK ON CO.park_num = PK.park_num
JOIN xCoasterType CT ON CO.coast_num = CT.coast_num JOIN xCoaster CO2 ON PK.park_num = CO2.park_num
JOIN xCoasterType CT2 ON CO2.coast_num = CT2.coast_num WHERE CT2.make_num = CT.make_num
AND CO2.coast_num <> CO.coast_num
ORDER BY CurrentPark;