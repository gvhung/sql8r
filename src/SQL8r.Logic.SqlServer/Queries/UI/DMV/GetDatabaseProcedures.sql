USE {0}; 

SELECT p.name AS pName, s.name AS sName, p.is_ms_shipped AS isSystemObject, p.object_id AS objectId 
FROM sys.all_objects AS p 
INNER JOIN sys.schemas AS s 
	ON p.schema_id=s.schema_id 
WHERE p.type='P' 
--ORDER BY p.is_ms_shipped, s.name, p.name
