$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.21.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'c3e7a0db43f77255e4e884a0b0e67e79c1cc272491f3c5fdbcff011fc7d1f2cf4222d936c482d9c9eb95f53f2f2ee021771ce398092c6a96b24bad3e936e1d59'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
