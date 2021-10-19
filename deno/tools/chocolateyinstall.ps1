$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.15.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '74d318de0c390dbffb7e3a8c22d466b58b9dce803f4e3d07bcdadb2a2a206e711826b82f209661f0018b6ccb53c8f84dd95112d0290016a7d7c9238d4698b10a'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
