
namespace SQL8r.Logic.DomainModel
{
	public class Sql8rAssemblyType : Sql8rType
	{
		private readonly string _assemblyClass;

		public Sql8rAssemblyType(string name, string schema, string assemblyClass, long objectId)
			: base(name, schema, objectId)
		{
			_assemblyClass = assemblyClass;
		}

		public string AssemblyClass
		{
			get { return _assemblyClass; }
		}
	}
}
