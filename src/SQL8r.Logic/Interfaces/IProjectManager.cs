using SQL8r.Logic.DomainModel.Project;

namespace SQL8r.Logic.Interfaces
{
    public interface IProjectManager
    {
        string ProjectName { get; set;}
        bool IsModified();
        Sql8rProject NewProject(string fileName);
        Sql8rProject LoadProject(string fileName);
        Sql8rProject ImportProject(Sql8rProject oldProject);
        void SaveProject();
        void SaveProjectAs(string fileName);
        void AddFile(string filePath);
        void AddFolder(string folderPath);
        void RenameFile(string oldFilePath, string newFilePath);
        void RenameFolder(string oldFolderPath, string newFolderPath);
        void RemoveFile(string filePath);
        void RemoveFolder(string folderPath);
    }
}
