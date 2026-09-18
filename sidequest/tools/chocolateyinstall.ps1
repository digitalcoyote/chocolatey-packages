$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.2.1/SideQuest-Setup-1.2.1-x64-win.exe'
    Checksum64 = '8bc3dd91fe12fcc3985bb6cf156d7489ba642eb567be5df48e0e0e82267766f8fe2555a2f968a8a4cf77184e65d5a0eafca9b3e3ed109df4f2fbf7925d148898'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
