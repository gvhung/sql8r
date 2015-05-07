USE {0}
 
SELECT p.name AS pName, p.parameter_id AS parameterId, p.system_type_id AS typeId, p.is_output AS isOutput, t.name AS tName 
FROM sys.all_parameters AS p 
INNER JOIN sys.types AS t 
	ON p.user_type_id = t.user_type_id 
WHERE p.object_id={1} 
ORDER BY p.parameter_id;
