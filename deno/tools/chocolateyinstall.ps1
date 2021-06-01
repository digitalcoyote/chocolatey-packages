$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.10.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '9a8c8103947816d931fbd0a7e5965fd3a937068a3660637d044992de2e4b1b9d4d3a997ab01340ce0146feca7d9cc78f03ab2da838b27e0e3833b02a6f0a0e54'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
