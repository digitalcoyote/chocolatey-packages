$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.25/SideQuest-Setup-0.10.25-x64-win.exe'
    Checksum64 = 'fc92da922dcc651ec82ab00cb3fff5fedb382fc0bb62b0791c81259f1ac2f4b373177d34d68a3bb5e883d7615bf12a18b3e1d80f963d89ea41f27e99c4c24e45'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
