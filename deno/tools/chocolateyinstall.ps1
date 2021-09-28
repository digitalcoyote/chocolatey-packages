$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.14.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '79cf71ecc50b87c84e98c0f16e964d7a8a74fd39cc47a2c424a46407c7c03a4edbedea1bd60388ac77356425e1fc2703ebe7d0f11427167bebc9a37123aa11a1'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
