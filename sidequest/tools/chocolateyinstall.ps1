$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.0.0/SideQuest-Setup-1.0.0-x64-win.exe'
    Checksum64 = '22028ebd2f665ebf66ac880c85f80487fd8fac4082b1eecdba807a337af01cdb3017731bde0bff43493cfc7a81d1579afaa2811180add0f8cdb3a399c3f54052'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
