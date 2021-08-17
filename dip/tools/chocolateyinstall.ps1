$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/3.0.0/dip-windows-2019'
    Checksum = '55050c27466db3b2fb4f4ad4466f6aeebfba9fa6967777428d71a9677f2f2e05e7afc0397282fd6460073d27a32d797f36c147734d0b50367665a8d0b1b6209e'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
