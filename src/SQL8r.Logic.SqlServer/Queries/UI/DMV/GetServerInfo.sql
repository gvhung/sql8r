SELECT 
	SERVERPROPERTY('ProductVersion') AS version, 
	SERVERPROPERTY('ProductLevel') AS level,
	SERVERPROPERTY('Edition') AS edition,
	SERVERPROPERTY('EngineEdition') AS engineEdition
