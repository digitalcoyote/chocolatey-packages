$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.24/SideQuest-Setup-0.10.24-x64-win.exe'
    Checksum64 = 'cff201edf5fdc265c3230a53d96dd43b129c8b16ec8d814d50849c7d207ba57b3795fe98cedb220986fc292312ac8e907f33d2448cd31f6565672e88d66e7020'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
