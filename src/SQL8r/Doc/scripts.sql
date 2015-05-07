USE AdventureWorks;

 SELECT *,i.name AS iName, i.index_id AS indexId, i.type AS iType, is_primary_key AS isPrimaryKey 
FROM sys.indexes AS i 
--WHERE i.object_id={1} 
ORDER BY i.name
                            
select * from sys.databases
SELECT *, c.name AS cName, c.column_id AS columnId FROM sys.all_columns AS c

select * from sys.sysindexes where name like '%K_Department_%' order by name
-- ak 805577908
-- pk 805577908
select * from sys.dm_db_index_operational_stats( 6, 805577908, 1, 1)
select * from sys.dm_db_index_physical_stats( 6, 805577908, 1, 1, '')
select * from sys.dm_db_index_usage_stats where object_id=805577908
select * from sys.stats
select * from sys.stats_columns

exec sp_spaceused 'HumanResources.Department'

exec sp_spaceused 'AK_Department_Name'
exec sp_spaceused 'PK_Department_DepartmentID'
