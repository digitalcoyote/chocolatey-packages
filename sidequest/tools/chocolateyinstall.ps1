$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.36/SideQuest-Setup-0.10.36-x64-win.exe'
    Checksum64 = '9679016617976dbe5f07735e12ad6c54a0f53328fba07f43cda5391c22596424e5c89d6e855a1768f0054e4e1847ce071ed1d0c90e222c8b3639408162fda47e'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
