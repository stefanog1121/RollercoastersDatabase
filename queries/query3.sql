-- Name parks that do not operate a 'Batman' model model cloned rollercoaster

SELECT PK.park_name 
FROM xPark PK 
WHERE NOT EXISTS(
    SELECT 1
    FROM xCoaster CO
    JOIN xCoasterType CT ON CT.coast_num = CO.coast_num JOIN xMake MK ON MK.make_num = CT.make_num JOIN xModel MD ON MD.mod_num = CT.mod_num WHERE CO.park_num = PK.park_num
    AND MK.make_num = CT.make_num
    AND MD.mod_num = CT.mod_num
    AND MD.mod_name = 'Batman'
)