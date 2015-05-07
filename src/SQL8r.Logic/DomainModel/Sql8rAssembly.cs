using System.Collections.Generic;

namespace SQL8r.Logic.DomainModel
{
	public class Sql8rAssembly : Sql8rObject
	{
		private readonly string _name;
		private readonly IDictionary<string, Sql8rAssemblyType> _types = new Dictionary<string, Sql8rAssemblyType>();

		public Sql8rAssembly(string name, long objectId)
		{
			_name = name;	
			ObjectId = objectId;
		}

		public string Name
		{
			get { return _name; }
		}

		public IDictionary<string, Sql8rAssemblyType> Types
		{
			get { return _types; }
		}
	}
}