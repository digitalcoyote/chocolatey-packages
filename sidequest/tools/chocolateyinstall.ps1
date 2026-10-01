$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.3.0/SideQuest-Setup-1.3.0-x64-win.exe'
    Checksum64 = '1e31e05a7db9f975ff4333c5981198f223f496ab266606d8a3dbf1e9e75c8bf2e5e1ff72f1189fcc74fbfaff4dc6c109386595d841e536fef2c60b6c2e2b350e'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
