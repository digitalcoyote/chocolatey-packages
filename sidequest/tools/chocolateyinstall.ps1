$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.1.0/SideQuest-Setup-1.1.0-x64-win.exe'
    Checksum64 = '0089b441ddc3c43b5382cb7b53e90dff42eca2509228ee4b4e16fc5f27d514c6017fa9f68fab66ccde0038cb8382f17a1888908e68a35d413bd4df938f22118c'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
