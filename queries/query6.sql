-- Name all parks, coasters, and awards they have won, if any

SELECT DISTINCT PK.park_name, AW.award_name, CO.coast_name
FROM xPark PK
FULL JOIN xCoaster CO ON PK.park_num = CO.park_num 
FULL JOIN xWins W ON CO.coast_num = W.coast_num 
FULL JOIN xAward AW ON W.award_ID = AW.award_ID 
ORDER BY PK.park_name;