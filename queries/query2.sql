-- Name parks that only operate Steel rollercoasters

SELECT DISTINCT PK.park_name
FROM xPark PK
JOIN xCoaster CO ON PK.park_num = CO.park_num
JOIN xCoasterType CT ON CO.coast_num = CT.coast_num JOIN xModel MD ON CT.mod_num = MD.mod_num WHERE MD.mod_type = 'Steel'
AND PK.park_num NOT IN (
    SELECT CO.park_num
    FROM xCoaster CO
    JOIN xCoasterType CT ON CO.coast_num = CT.coast_num JOIN xModel MD ON CT.mod_num = MD.mod_num WHERE MD.mod_type != 'Steel'
);