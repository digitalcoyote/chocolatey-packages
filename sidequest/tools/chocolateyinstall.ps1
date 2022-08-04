$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.28/SideQuest-Setup-0.10.28-x64-win.exe'
    Checksum64 = 'ca5be9be4b22357348fc064c8ed3fbd85f08096ca8908641f463176bd0b1e03a23bf1dfb056a5e6644e6dd033777f9698131211a79f966ef42ab8b41b9408c44'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
