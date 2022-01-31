$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.27/SideQuest-Setup-0.10.27-x64-win.exe'
    Checksum64 = 'ed4dddf3b79833e14c148b982b16d43116bd859b41afc59a4f21e98393321c80fe277ab0f78ef26e1b9c282b016030c691317fbebeb91b13619a34e97e10d969'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
