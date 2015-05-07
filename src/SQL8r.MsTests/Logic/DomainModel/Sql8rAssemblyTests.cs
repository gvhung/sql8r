using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SQL8r.Logic.DomainModel;

namespace SQL8r.MsTests.Logic.DomainModel
{
	[TestClass]
	public class Sql8rAssemblyTests
	{
		[TestMethod]
		[ExpectedException(typeof(ExecutionEngineException))]
		public void Constructor01()
		{
			Sql8rAssembly sql8rAssembly;
			sql8rAssembly = new Sql8rAssembly("Text", 10L);
            Assert.IsNotNull(sql8rAssembly);

			sql8rAssembly = new Sql8rAssembly("", 10L);
			Assert.IsNotNull(sql8rAssembly);
	
			sql8rAssembly = new Sql8rAssembly("", 0L); 
			Assert.IsNotNull(sql8rAssembly);
			
			sql8rAssembly = new Sql8rAssembly(null, -1L);
			Assert.IsNotNull(sql8rAssembly);
			
			sql8rAssembly = new Sql8rAssembly(null, -10L);
			Assert.IsNotNull(sql8rAssembly);
		}
	}
}