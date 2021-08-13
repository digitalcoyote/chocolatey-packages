$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.23/SideQuest-Setup-0.10.23-x64-win.exe'
    Checksum64 = 'aed93ad25df1497690884fad6f2f04a4c57cca8b2c44419563c493263322f6516392a2170202596ba2a4d4a31a74f28059366fa6b05a7472d6cc585030c9c07d'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
