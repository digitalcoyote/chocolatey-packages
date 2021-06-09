$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '6dfdc4b1f8090c838d6a5ec1c4dda1970e72db0eaddf22d251c1514a7af4da5b91c0eacfd05f4eedd938e0d0078dd68f31245e9f2d9c09ee06a0edf8b63aa867'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
