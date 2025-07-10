$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = 'https://github.com/dorssel/usbipd-win/releases/download/v5.1.0/usbipd-win_5.1.0_x64.msi'
    Checksum = ''
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

