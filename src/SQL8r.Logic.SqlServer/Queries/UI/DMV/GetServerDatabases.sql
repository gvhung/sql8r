USE master;

SELECT name, database_id AS databaseId 
FROM sys.databases 
--ORDER BY name