$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.22.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '4ab4eacbf9c80336f75b962d21549a06184dec93cb936d0da49fa3def438e5c5dae2d6e37b8c8885e85925d92de7bf03c5492f0add516faf063eb8b6054aee87'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
