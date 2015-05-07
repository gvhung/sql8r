USE {0};

SELECT t.name AS tName, t.is_ms_shipped AS isSystemObject, t.object_id AS objectId, s.name AS sName 
FROM sys.all_objects AS t 
INNER JOIN sys.schemas AS s ON t.schema_id=s.schema_id 
WHERE t.type='U' 
--ORDER BY t.is_ms_shipped, s.name, t.name;