USE {0};

SELECT i.object_id AS objectId, i.name AS iName, i.index_id AS indexId, i.type AS iType, is_primary_key AS isPrimaryKey 
FROM sys.indexes AS i 
WHERE /*i.object_id= AND*/ i.type > 0 
--ORDER BY i.name