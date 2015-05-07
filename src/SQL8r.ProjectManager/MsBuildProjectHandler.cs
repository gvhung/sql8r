using System.IO;
using Microsoft.Build.BuildEngine;
using SQL8r.Logic.DomainModel.Project;

namespace SQL8r.ProjectManager
{
    public class MsBuildProjectHandler 
    {
        private static MsBuildProjectHandler _instance;
        private Project prj;

        private MsBuildProjectHandler()
        {
        }

        public static MsBuildProjectHandler Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new MsBuildProjectHandler();
                }
                return _instance;
            }
        }

        public Sql8rProject LoadProject(string fileName)
        {
            var baseFile = new FileInfo(fileName);
            if (baseFile.Exists)
            {
                DirectoryInfo baseDir = baseFile.Directory;

                prj = new Project();
                prj.Load(fileName);
                string name = baseFile.Name;

                var pro = new Sql8rProject(name, baseDir);

                foreach (BuildItem o in prj.GetEvaluatedItemsByNameIgnoringCondition("None"))
                {
                    string itemName = o.Include;

                    string filePath = Path.Combine(baseDir.FullName, itemName);
                    var projectFile = new Sql8rProjectFile(Path.GetFileName(filePath), filePath);

                    pro.ProjectFiles.Add(projectFile);
                }

                foreach (BuildItem o in prj.GetEvaluatedItemsByNameIgnoringCondition("Compile"))
                {
                    string itemName = o.Include;

                    string filePath = Path.Combine(baseDir.FullName, itemName);
                    var projectFile = new Sql8rProjectFile(Path.GetFileName(filePath), filePath);

                    pro.ProjectFiles.Add(projectFile);
                }

                return pro;
            }
            return null;
        }

    }
}