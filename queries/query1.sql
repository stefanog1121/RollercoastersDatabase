-- Name all manufacturers that have a rollercoaster in every Six Flags park.

SELECT MK.make_name 
FROM xMake MK 
WHERE NOT EXISTS (
    SELECT PK.park_num
    FROM xPark PK
    WHERE PK.park_chain = 'Six Flags' AND NOT EXISTS (
        SELECT 1
        FROM xCoaster CO
        JOIN xCoasterType CT ON CO.coast_num = CT.coast_num WHERE MK.make_num = CT.make_num
        AND CO.park_num = PK.park_num
        ) 
    );