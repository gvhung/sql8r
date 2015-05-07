USE {0}; 

SELECT v.name AS vName, s.name AS sName, v.is_ms_shipped AS isSystemObject, v.object_id AS objectId 
FROM sys.all_views AS v 
INNER JOIN sys.schemas AS s ON v.schema_id=s.schema_id 
--ORDER BY v.is_ms_shipped, s.name, v.name;                        