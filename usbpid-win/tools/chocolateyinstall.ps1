$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = 'https://github.com/dorssel/usbipd-win/releases/download/v5.2.0/usbipd-win_5.2.0_x64.msi'
    Checksum = '2c1961c1c4353dbcd5ac35b03a4ba1a1a7f8a9fff9e6d94025186a0f1a0d1837158180ffa63fcffda47dac65f8cd05712bd92ed2db850f09b529db56a39b3180'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

