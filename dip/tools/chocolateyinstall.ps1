$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'dip.exe'
    URL = 'https://github.com/030/dip/releases/download/4.0.0/dip-windows-2019'
    Checksum = 'f546f3598a4eb9e2269bee2c3b0a1cde8483eb123ba5dee07bcdbe369b2961764ea85b22a8f8ed91534ac9bc536abb0c86310f1c0d4690f41f6de384bc23c9c8'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
