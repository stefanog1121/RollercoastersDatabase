-- Name all parks and their respective rollercoasters longer than 5250 ft in length

SELECT PK.park_name, CO.coast_name, MD.length
FROM xCoaster CO
JOIN xCoasterType CT ON CT.coast_num = CO.coast_num
JOIN xModel MD ON MD.mod_num = CT.mod_num
RIGHT JOIN xPark PK ON CO.park_num = PK.park_num AND MD.length > 5250;