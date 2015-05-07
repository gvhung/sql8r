USE {0}; 

SELECT A.name, A.principal_id, A.assembly_id AS objectId, A.clr_name, A.permission_set, A.is_visible, A.create_date, A.modify_date, A.is_user_defined, 
	AF.name AS afName, AF.file_id AS fileId 
FROM sys.assemblies AS A 
INNER JOIN sys.assembly_files AS AF 
ON A.assembly_id = AF.assembly_id;

SELECT ATY.name, ATY.user_type_id AS objectId, S.name AS sName, ATY.is_user_defined AS isUserDefined, ATY.assembly_id AS assemblyId, ATY.assembly_class AS assemblyClass 
FROM sys.assembly_types AS ATY
INNER JOIN sys.schemas AS S
ON ATY.schema_id = S.schema_id;

/*
select * from sys.assemblies
select * from sys.assembly_files
select * from sys.assembly_modules
select * from sys.assembly_references
select * from sys.assembly_types

*/