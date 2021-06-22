$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'ca23cc3b2813869892236fa8ae420f7be7d52deef33a6aed073db512160ad14bbc8c39acb1cd6721086e2f2373b9394d9f666700b751e2d0470263b12a3b45fa'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
