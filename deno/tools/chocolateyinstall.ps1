$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.22.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'f10a7e63c32557fcbbc24eb8a346d8a3033cb1bfb2234c5148979bbd45c5facaa950beba712cbdd6768683c2d4b6bbb6a34a1e83f29002f05fd68813beffa9cf'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
