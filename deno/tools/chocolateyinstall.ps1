$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '96ecb80295dff9d82e1795330a9e8e47c785d04d9a4c6081457c05e243bb3afe3a77045463f98d8035e9c1dda69b64c52eefb49ccb0b3b056817419e6bd0bcf1'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
