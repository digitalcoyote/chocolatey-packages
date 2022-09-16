$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.25.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'dcecccc286418fb2180281c4c7ae3e66b07bff480e71de1463dfcb782e13d1f2c300957938b2d92e05254b483e00c56f8b1901a02dc5306671ebca79fee75882'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
