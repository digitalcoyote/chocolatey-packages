$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.3.1/SideQuest-Setup-1.3.1-x64-win.exe'
    Checksum64 = '6a29165e0afd0656df2c722a8c576848ea049462345194a13a92d5de9c71413e03247058ab84c2431ceecc2d73853be320541dba8f7c92b4732e0f7c0800af24'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
