$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.13.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'eb1a27a961c0bf0e8cbdab7316d3863c12f818363b26553e7a054079cdc1b028fdc9f06c5ee8d0108c4993e27278c1382cdb565a3f0b4acf0892d5c4cb7e0621'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
