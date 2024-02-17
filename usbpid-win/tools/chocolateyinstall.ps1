$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = 'https://github.com/dorssel/usbipd-win/releases/download/v4.1.0/usbipd-win_4.1.0.msi'
    Checksum = '6bf8b5249d5f322dfd90ae26320d7e9f9c9dc4ea8b6dbd5b62ad35a81224b8823a0713a0779f6d675a394f1d3edcf505983b6f46a493cf40102bfcb189bc0f44'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

