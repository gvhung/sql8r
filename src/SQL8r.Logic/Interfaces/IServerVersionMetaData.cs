using SQL8r.Logic.Factories;

namespace SQL8r.Logic.Interfaces
{
	public interface IServerVersionMetaData
	{
	    string DatabaseVersion { get; }
	    string HandlerVersion { get; }
	    bool IsPublished { get; }
	}
}