using System.IO;
using System.Windows.Forms;
using SQL8r.Logic.DomainModel.Project;
using SQL8r.Logic.Factories;
using SQL8r.Logic.Helpers;
using SQL8r.Logic.Interfaces;
using System.Xml.Serialization;

namespace SQL8r.ProjectManager
{
    public class SQL8rProjectHandler : IProjectManager
    {
        private static IProjectManager _instance;
        private Sql8rProject prj;

        private SQL8rProjectHandler()
        {
        }

        public static IProjectManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new SQL8rProjectHandler();
                }
                return _instance;
            }
        }

        public string ProjectName
        {
            get { return prj.Name; }
            set { }
        }

        public bool IsModified()
        {
            if (prj != null)
            {
                return prj.IsModified;
            }
            return false; 
        }

        public Sql8rProject NewProject(string fileName)
        {            
            var fi = new FileInfo(fileName);
            string fname = fi.Name.Replace(fi.Extension, string.Empty);

            DirectoryInfo baseDir = fi.Directory;
            var projDir = new DirectoryInfo(baseDir + @"\" + fname);

            FileInfo file;
            if (projDir.Exists)
            {
                MessageBox.Show("Folder/project already exists!", DialogHelper.Instance.GetApplicationName());
                file = new FileInfo(projDir + @"\" + fi.Name);
                if (file.Exists)
                {
                    return null;
                }
            }
            else
            {
                projDir.Create();
                file = new FileInfo(projDir + @"\" + fi.Name);                
            }            

            var pro = new Sql8rProject(fname, projDir);
            pro.FullFileName = projDir + @"\" + fi.Name;
            
            prj = pro;
            SaveProjectAsXml(pro.FullFileName);

            return pro;
        }

        public Sql8rProject LoadProject(string fileName)
        {
            var baseFile = new FileInfo(fileName);
            if (baseFile.Exists)
            {
                FileStream fs = new FileStream(fileName, FileMode.Open);

                XmlSerializer xs = new XmlSerializer(typeof(Sql8rProject));
                Sql8rProject pro = (Sql8rProject)xs.Deserialize(fs);
                pro.FullFileName = fileName;

                DirectoryInfo baseDir = baseFile.Directory;
                pro.BaseDir = baseDir;

                foreach (Sql8rProjectFile _file in pro.ProjectFiles)
                {
                  //  var fi = new FileInfo(_file.Path);

                  //  pro.Files.Add(fi);
                }

                fs.Close();

                pro.IsModified = false;
                prj = pro;

                return pro;
            }
            return null;
        }

        public Sql8rProject ImportProject(Sql8rProject oldProject)
        {
            prj = oldProject;
            return prj;
        }

        public void SaveProjectAsXml(string fileName)
        {            
            FileStream fs = new FileStream(fileName, FileMode.Create);
            XmlSerializer xs = new XmlSerializer(typeof(Sql8rProject));
            xs.Serialize(fs, prj);
            fs.Close();
            prj.IsModified = false;
        }

        public void SaveProject()
        {
            if (prj != null && !string.IsNullOrEmpty(prj.FullFileName))
            {
                if (prj.IsModified)
                {
                    SaveProjectAsXml(prj.FullFileName);
                }
            }
            else if (prj != null)
            {
             //   SaveFileDialog sfd = new SaveFileDialog();
                SaveFileDialog sfd = DialogFactory.Instance.GetSaveProjectDialog();
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    SaveProjectAsXml(sfd.FileName);
                }
            }            
        }

        public void SaveProjectAs(string fileName)
        {
            SaveProjectAsXml(fileName);
        }

        public void AddFile(string filePath)
        {
           // var fi = new FileInfo(filePath);
           // prj.Files.Add(fi);

            var pf = new Sql8rProjectFile(Path.GetFileName(filePath), filePath);
            prj.ProjectFiles.Add(pf);

            prj.IsModified = true;
        }

        public void AddFolder(string folderPath)
        {
            var pf = new Sql8rProjectFolder(Path.GetFileName(folderPath), folderPath);
            prj.ProjectFolders.Add(pf);

            prj.IsModified = true;
        }

        public void RenameFile(string oldFilePath, string newFilePath)
        {
            RemoveFile(oldFilePath);
            AddFile(newFilePath);
        }

        public void RenameFolder(string oldFolderPath, string newFolderPath)
        {
            RemoveFolder(oldFolderPath);
            AddFolder(newFolderPath);
        }

        public void RemoveFile(string filePath)
        {            
            //foreach (FileInfo fi in prj.Files)
            //{
            //    if (fi.FullName == filePath)
            //    {
            //        prj.Files.Remove(fi);
            //        prj.IsModified = true;
            //        break;                    
            //    }
            //}

            foreach (Sql8rProjectFile pf in prj.ProjectFiles)
            {
                if (pf.Path == filePath)
                {
                    prj.ProjectFiles.Remove(pf);                    
                    File.Delete(pf.Path);
                    break;
                }
            } 
        }

        public void RemoveFolder(string folderPath)
        {
            foreach (Sql8rProjectFolder pf in prj.ProjectFolders)
            {
                if (pf.Path == folderPath)
                {
                    prj.ProjectFolders.Remove(pf);
                    prj.IsModified = true;
                    if (Directory.Exists(pf.Path))
                        Directory.Delete(pf.Path);
                    break;
                }
            }
        }
    }
}