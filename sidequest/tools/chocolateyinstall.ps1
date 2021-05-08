$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.20/SideQuest-Setup-0.10.20-x64-win.exe'
    Checksum64 = 'ff6a6196ebace495d9767c189505ea2110dd89baa7790d1ffc47d582c6591749a26369ef68748c504c6050537c4e9cfa3b73940438a6dc0edb9a7ac61c8088d6'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
