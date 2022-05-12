$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.21.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '62f51abf59bace373fe5acf20af3c766d60f2981a1493bfdcf8c57fc177dcdf26d1191dbbcd36263ddbb9d1ec64deaf9965541c629c2bcf982627844c3ca043c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
