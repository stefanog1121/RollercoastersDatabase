-- Name all coasters taller than 250 feet or with a top speed greater 
-- than 65 miles per hour open during the christmas season

SELECT DISTINCT CO.coast_name
FROM xCoaster CO
JOIN xCoasterType CT ON CT.coast_num = CO.coast_num 
JOIN xModel MD ON MD.mod_num = CT.mod_num
JOIN xPark PK ON PK.park_num = CO.park_num
JOIN xHasEvent HE ON HE.park_num = PK.park_num 
JOIN xEvent EV ON EV.event_num = HE.event_num 
WHERE (
    CO.coast_num = CT.coast_num
    AND MD.mod_num = CT.mod_num 
    AND PK.park_num = HE.park_num 
    AND EV.event_num = HE.event_num
    AND EV.event_seas = 'Christmas')
AND (
    MD.height > 250 OR MD.speed > 65);