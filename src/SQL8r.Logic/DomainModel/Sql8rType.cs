
namespace SQL8r.Logic.DomainModel
{
	public class Sql8rType : Sql8rObject
	{
		private readonly string _name;
		private readonly string _schema;

		public Sql8rType(string name, string schema, long objectId)
		{
			_name = name;
			_schema = schema;
			ObjectId = objectId;
		}

		public string Name
		{
			get { return _name; }
		}

		public string Schema
		{
			get { return _schema; }
		}
	}
}
