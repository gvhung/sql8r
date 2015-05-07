using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Windows.Forms;
using System.Xml;
using Infragistics.Win.UltraWinToolbars;
using SQL8r.Logic.Connection;
using SQL8r.Logic.Exceptions;
using SQL8r.Logic.Helpers;
using SQL8r.Logic.Interfaces;
using SQL8r.WinForms.Factories;

namespace SQL8r.WinForms.Presenters.DockedChildren
{
	internal static class RibbonEventHandlers
	{
		internal static void btAbout_ToolClick(object sender, ToolClickEventArgs e)
		{
			IPresenter p = PresenterFactory.Instance.GetAboutPresenter();
			p.ShowDialog();
		}

		internal static void btSqlHelp_ToolClick(object sender, ToolClickEventArgs e)
		{
			var url = new Uri("http://msdn.microsoft.com/en-us/library/ms189826.aspx");
			executeCommand(url.AbsoluteUri);
		}

		internal static void btExit_ToolClick(object sender, ToolClickEventArgs e)
		{
			Application.Exit();
		}

		internal static void btUpgradeCheck_ToolClick(object sender, ToolClickEventArgs e)
		{
			try
			{
				var url = new Uri("http://sql8r.se/updates/latestversion.xml");
				WebRequest r = WebRequest.Create(url);
				WebResponse response = r.GetResponse();
				Stream s = response.GetResponseStream();
				var sr = new StreamReader(s);

				string xml = sr.ReadToEnd();
				response.Close();

				var doc = new XmlDocument();
				doc.LoadXml(xml);
				int major = int.Parse(doc.GetElementsByTagName("major")[0].InnerText);
				int minor = int.Parse(doc.GetElementsByTagName("minor")[0].InnerText);
				//int bulid = int.Parse(doc.GetElementsByTagName("build")[0].InnerText);
				var av = new Version(major, minor);

				var iv = DialogHelper.Instance.GetAssemblyVersion();

				IPresenter p = PresenterFactory.Instance.GetUpdatesPresenter(iv, av);
				p.ShowDialog();
			}
			catch (WebException wex)
			{
				throw new SQL8rException("Unable to perform version check", wex);
			}
		}

		internal static void btSvr_ToolClick(object sender, ToolClickEventArgs e)
		{
			var settings = (ServerConnectionSettings)e.Tool.Tag;
			MainPresenter.Instance.ConnectToServer(settings);
			MainPresenter.Instance.OpenPane(MainPresenter.DockedPaneKeys.Database);
		}

		internal static void btExternalTool_ToolClick(object sender, ToolClickEventArgs e)
		{
			if (e.Tool.OwningRibbonGroup != null && e.Tool.OwningRibbonGroup.Tab.Key == "rtTools")
			{
				executeCommand(e.Tool.Tag.ToString());
			}
		}

		private static void executeCommand(string toolPath)
		{
			Process.Start(toolPath);
		}
	}
}