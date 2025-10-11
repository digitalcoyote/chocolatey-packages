$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = 'https://github.com/dorssel/usbipd-win/releases/download/v5.3.0/usbipd-win_5.3.0_x64.msi'
    Checksum = 'd50e11de2c1e8b1c0f120adab1abad1b99b4e76566be87609a1b4eb8254bdf91da17c6948adfe5456167514e3ff7b2e26c0b1e0063201fc505a0813573234719'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

