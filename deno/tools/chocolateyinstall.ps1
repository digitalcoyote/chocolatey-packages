$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.14.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'c5f1c8ddcdc4469baed3c43f3269081055af7fe9ef7316fcc523d36d79c92e5fb6a20574ebace6a1be913403fd60ab640fed3c3fa48ac57301a88bbdf5cfe509'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
