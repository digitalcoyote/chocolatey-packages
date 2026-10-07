$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.4.1/SideQuest-Setup-1.4.1-x64-win.exe'
    Checksum64 = '1d1f6125846b1a33727e021c274be3ca6f82f5711705fb7c2a5ea2a1df4717e36d18109c353f5c920e5c2830a951289f32b6ee6a7582a79e93a23f0cf311bce1'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
