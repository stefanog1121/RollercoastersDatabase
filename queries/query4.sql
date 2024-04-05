-- Name all coasters at least 200 feet in height AND awards they have won, if any

SELECT DISTINCT CO.coast_name, AW.award_name 
FROM xCoaster CO
JOIN xCoasterType CT ON CT.coast_num = CO.coast_num 
JOIN xModel MD ON MD.mod_num = CT.mod_num
LEFT JOIN xWins WN ON WN.coast_num = CO.coast_num 
LEFT JOIN xAward AW ON AW.award_id = WN.award_id 
WHERE MD.height >= 200;