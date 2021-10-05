$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.14.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '17116bffe9d1bc013d6c570b909967e29f5f4e12cee3910ff01679861672d86ef65ff7d1116b11fffdd4bcb7532d86acec60dd4810f9dccf039993f3753ecb7a'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
