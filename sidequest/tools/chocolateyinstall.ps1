$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.37/SideQuest-Setup-0.10.37-x64-win.exe'
    Checksum64 = '546f3e8de48d205880f2e40507ba30154487234b0ae1db13a48a216faf11d25e7a19f2a6f8b7e14f501969e3b61861de5f2818f3408c319d2dc39742234c15bc'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
