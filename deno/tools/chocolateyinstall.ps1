$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.17.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'd5bc2e29f0985015819652df45d9642a6ec8c13a505461132a685106db9524784252f8ab0bcfae6da754f852702a20cc038e1e08477f27bc4e38565fa707c8fa'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
