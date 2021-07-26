$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.12.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '0ee5ab03213d2916d204e995cfd9ddf52a37ec1c98af100cfa4416f57b2384fec89a4143e6f82fc511411aebd3e02a1021ba3f41a504882fbdb1115150e4d6fc'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
