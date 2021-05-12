$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.10.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '0445a8107264fa1aa909b46a5b7e255ad2647feecd34e5684f87621786c50f7f7afbc2b84f9b149369f531b72024d198ccd92b2823ffc53acd5ff4334f36b9db'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
