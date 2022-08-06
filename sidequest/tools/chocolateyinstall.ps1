$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.31/SideQuest-Setup-0.10.31-x64-win.exe'
    Checksum64 = '322e326c40765316f12e6ceb145c959d6b53bdaaeeacecdf21703a77e8f6fa64aaa78352863feb876ff471bd284aa19f4d9e8a53e9e675c27df65b8c85cf7435'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
