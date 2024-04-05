-- RMC Topper Track and IBox model rollercoasters both make use of wooden structures with a steel track layout. 
-- Name all of these coasters, the former name of all IBox conversions, and also list and sort by their heights.

SELECT CO.coast_name, wc.form_name AS FormerName, MD.height 
FROM xCoaster CO
JOIN xCoasterType CT ON CO.coast_num = CT.coast_num
LEFT JOIN xWoodConversion WC ON WC.coast_num = CO.coast_num 
JOIN xModel MD ON MD.mod_num = CT.mod_num
WHERE (MD.mod_name = 'Topper Track' OR MD.mod_name = 'IBox') 
ORDER BY MD.height DESC;