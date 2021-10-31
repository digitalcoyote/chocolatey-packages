$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/4.0.2/dip-windows-2019'
    Checksum = '7073b55f20c61f8e28e5ec7952f497c800a54afb2b8841fa6824cd308203b95ea8d27a0293b907a84f06536f76f0bfe8195bc906c76e9ffd64dadd9769f7f19e'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
