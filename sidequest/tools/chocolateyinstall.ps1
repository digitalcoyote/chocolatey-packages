$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.0.1/SideQuest-Setup-1.0.1-x64-win.exe'
    Checksum64 = 'ae1beda4a132de09c0f9b43fdc293e1d21104d2c784f32fe99559becf67ccb6cea01dfa0ae0778bf526fc89d776266ee75d139891b89a757aa305efb14ba7c19'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
