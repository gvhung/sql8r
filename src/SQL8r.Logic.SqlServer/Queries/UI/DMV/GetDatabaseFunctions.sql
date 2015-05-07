USE {0}; 

SELECT f.name AS fName, s.name AS sName, f.type AS fType, f.is_ms_shipped AS isSystemObject, f.object_id AS objectId 
FROM sys.all_objects AS f 
INNER JOIN sys.schemas AS s 
	ON f.schema_id=s.schema_id 
WHERE f.type='FN' OR f.type='TF' 
--ORDER BY f.is_ms_shipped, s.name, f.name
