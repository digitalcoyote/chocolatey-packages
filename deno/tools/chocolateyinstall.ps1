$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.24.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '1a2bb2b57f9d8f49f0d29e63fc0288c140136b6dabfafcdb5eb9b388ad03405e34ec44794d4f8cbaa457c9c3ca7a953c04501f0f90a2dd3718f7c684c6b463fb'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
