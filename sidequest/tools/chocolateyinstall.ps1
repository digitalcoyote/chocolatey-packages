$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.39/SideQuest-Setup-0.10.39-x64-win.exe'
    Checksum64 = '15dd7b01f6779e5a714d2990ad78f0ccea98ec29672c1a9d170c27fddb8232dd18130c95d9b4c097d48ad61591262b160afe6a3f3aaf734432819fbc638b5404'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
