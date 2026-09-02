$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.0.2/SideQuest-Setup-1.0.2-x64-win.exe'
    Checksum64 = 'c76cc16d5a02fd42431ddfebec3743ed562c3497f11c94ed7a10ef204d90c41ad46eada6ec094c028316198b54ea704b45ab25dfc67571d4f64b68b12a2c3978'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
