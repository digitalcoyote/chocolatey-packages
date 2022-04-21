$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.21.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'dbca35e8533ae91b00d3694722921d4c4bae2c8460b044805ba0e18ac4513d34d94507aad2fc0705b8c30eb0d21201a2a74ba5b574a0c7fedaa113265f65402f'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
