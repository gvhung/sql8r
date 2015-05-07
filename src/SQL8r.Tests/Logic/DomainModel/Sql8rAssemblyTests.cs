using System;
using MbUnit.Framework;
using SQL8r.Logic.DomainModel;

namespace SQL8r.Tests.Logic.DomainModel
{
	    
	public class Sql8rAssemblyTests
	{
		[Test]
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