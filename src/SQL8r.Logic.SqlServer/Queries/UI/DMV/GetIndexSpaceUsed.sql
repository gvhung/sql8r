USE {0}; 

DECLARE @db_id SMALLINT;
DECLARE @object_id INT;
DECLARE @index_id INT;

SET @db_id = {1};
SET @object_id = {2};
SET @index_id = {3};

---  database_id, index_id, partition_number, mode 

SELECT index_id, avg_fragmentation_in_percent, fragment_count, avg_fragment_size_in_pages, page_count 
FROM sys.dm_db_index_physical_stats(@db_id, @object_id, @index_id, NULL , 'LIMITED');

