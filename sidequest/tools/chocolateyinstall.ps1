$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.33/SideQuest-Setup-0.10.33-x64-win.exe'
    Checksum64 = '72377f2bdf1c4020270803a98267fb0dafa39c2679c0954adec2c40d541e2149ecb469f8804cecb745be985322b2a726519b2e3cb5e3805ea409eaf259f4e3c3'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
