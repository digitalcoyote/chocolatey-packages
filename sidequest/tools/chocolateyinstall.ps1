$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.38/SideQuest-Setup-0.10.38-x64-win.exe'
    Checksum64 = '8d4e5b48534f0fc1e4d7d1fd38f2424168d311ef04648887b1339c4d160a5f311137af60b47e7e27db5c2aaf81f0d34253d14856cc7e9b187e98b03f7f3eead6'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
