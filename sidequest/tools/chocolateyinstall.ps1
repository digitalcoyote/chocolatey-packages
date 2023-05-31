$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.35/SideQuest-Setup-0.10.35-x64-win.exe'
    Checksum64 = '4d28066b37d15c470d07305e25317bd388a8d16901402b50c232d87e9f6977748b45cdbf107bbfc6fe444012ab77e16e179d2972398104aa530e7cb9587a7a49'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
