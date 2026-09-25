$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.2.3/SideQuest-Setup-1.2.3-x64-win.exe'
    Checksum64 = '90cb217260d5fc596a8af4c3e743c2349801ab323d56876772a267375d27cdf064b44e288f7a86f0c768c276976392c35f59163c2c610b07a513357e373b7df2'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
