USE {0};

SELECT c.object_id AS objectId, c.name AS cName, c.column_id AS columnId, t.name AS typeName, c.max_length AS maxLength, i.is_primary_key AS isPrimaryKey
FROM sys.all_columns AS c
INNER JOIN sys.types AS t
	ON c.user_type_id = t.user_type_id 
LEFT OUTER JOIN sys.index_columns AS ic
	ON c.object_id = ic.object_id AND c.column_id = ic.column_id
LEFT OUTER JOIN sys.indexes AS i 
	ON ic.object_id = i.object_id AND i.index_id = ic.index_id AND i.is_primary_key = 1
--WHERE c.object_id= 
--ORDER BY c.column_id, i.is_primary_key DESC
