$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = 'https://github.com/dorssel/usbipd-win/releases/download/v5.1.0/usbipd-win_5.1.0_x64.msi'
    Checksum = '38f6dafb332171d7194bdd8af29afe9cbaa67aab427ced4dc9350c116f828c17f2db82c7170bdd1850165f8d0a2c198f2c2214c6f96ee1dddee45d72fe136686'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

