$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.17.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '404c62f3df12107afab31ca1bec8fc937e62cb69b6bc480fefbb74f8046b5f2224e79b0d6f113522cdb03fbd2a7e0d204b7cd051a46c65ebf0460d8f5b3bcb5e'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
