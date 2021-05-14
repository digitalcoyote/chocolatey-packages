$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.21/SideQuest-Setup-0.10.21-x64-win.exe'
    Checksum64 = 'b0127a49841eab609c4193182b81884ccbfa94818211ddc42f40d97a8c82b09d085f2d9e44f844f523b9ab0ed8cf78ef6e05177f3b083a500cbf78305d4a66ab'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
