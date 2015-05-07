[Setup]
AppName=SQL8r
AppVerName=SQL8r v0.11.17
DefaultDirName={pf}\SQL8r
DefaultGroupName=SQL8r
UninstallDisplayIcon={app}\SQL8r.exe
AppPublisher=sql8r.se
AppPublisherURL=http://sql8r.se/
SolidCompression=yes
Compression=lzma/ultra
OutputBaseFileName=SQL8rSetup

[Files]
Source: "SQL8r\SQL8r.exe"; DestDir: "{app}"
Source: "SQL8r\SQL8r.Logic.dll"; DestDir: "{app}"
Source: "SQL8r\SQL8r.Logic.DotNet.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.Logic.Front.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.Logic.MySQL.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.Logic.Oracle.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.Logic.SqLite.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.Logic.SqlServer.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.ProjectManager.dll"; DestDir: "{app}";
Source: "SQL8r\SQL8r.WinForms.dll"; DestDir: "{app}";

Source: "SQL8r\Alsing.SyntaxBox.dll"; DestDir: "{app}";
Source: "SQL8r\MySql.Data.dll"; DestDir: "{app}";
Source: "SQL8r\System.Data.SQLite.dll"; DestDir: "{app}";
Source: "SQL8r\System.Threading.dll"; DestDir: "{app}";
Source: "SQL8r\TraceTool.dll"; DestDir: "{app}";

Source: "SQL8r\Infragistics2.Documents.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Excel.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Shared.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.Misc.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinDock.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinEditors.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinGrid.DocumentExport.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinGrid.ExcelExport.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinGrid.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinListView.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinPrintPreviewDialog.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinStatusBar.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinTabbedMdi.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinTabControl.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinToolbars.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.UltraWinTree.v8.2.dll"; DestDir: "{app}";
Source: "SQL8r\Infragistics2.Win.v8.2.dll"; DestDir: "{app}";

Source: "SQL8r\Microsoft.Build.Engine.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.ExceptionMessageBox.dll"; DestDir: "{app}";

Source: "SQL8r\Microsoft.SqlServer.ConnectionInfo.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.SqlServer.Management.Sdk.sfc.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.SqlServer.Smo.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.SqlServer.SmoExtended.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.SqlServer.SqlClrProvider.dll"; DestDir: "{app}";
Source: "SQL8r\Microsoft.SqlServer.SqlEnum.dll"; DestDir: "{app}";

; app.config
Source: "SQL8r\readme.txt"; DestDir: "{app}"; Flags: isreadme

[Run]
Filename: "{app}\SQL8r.exe"; Description: "Launch SQL8r"; Flags: postinstall skipifsilent

[Icons]
Name: "{commondesktop}\SQL8r"; Filename: "{app}\SQL8r.exe"
