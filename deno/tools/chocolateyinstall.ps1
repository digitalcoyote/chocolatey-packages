$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.15.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'dcd76da82b3b12082bd18a1c19ee52c2b93113acdb7f6465e5dca6ab1d9e1c176922d4010d8ac43e358653ac581e34afb327df5aa9ad759de4490a0c9790d94c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
