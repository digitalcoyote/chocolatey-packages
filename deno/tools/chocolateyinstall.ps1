$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.24.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '8209cb0b5ae69d5fb3de3e8e8c55c34fe83802b1291463b6d143018354cfcd2a9444e9dbf93f9a2d10d6bb5836a477da3ff8e0855de046f380bd9a3365088401'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
