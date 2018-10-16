# QMCloudTemplate
A mobile automation project template using Quamotion Cloud and Pester

This is only a sample, feel free to alter/modify this template upon your needs.

## Prerequisites
1. PowerShell
2. Quamotion.Cloud PowerShell module: https://www.powershellgallery.com/packages/Quamotion.Cloud
3. Download and unzip https://github.com/bartsaintgermain/QMCloudTemplate/releases/latest for local project.
## Project structure
1. project.nuspec file

The project.nuspec file contains metadata to discribe your project. Please do modify the: 
    * id
    * authors
    * description
2. script folder
Drop your script files in this folder.
3. upload-package.ps1
Usage: 
```powershell
.\upload-package.ps1 -version 0.0.3 -quamotionAPIKey "your api key"
```

You can create and get your api key from http://cloud.quamotion.mobi. 
Please mail to info@quamotion.mobi for access and more information.