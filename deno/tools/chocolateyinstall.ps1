$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'ee60d471aa06e699532493731d476407110938107ce8cf79d54dd415a0ae8debcaae12f0f8b71f0cd49cd133d5ff1684cb6e8648bf0e1dd29da694e7aa732403'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
