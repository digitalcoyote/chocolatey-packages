$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.19.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '740c814a63bff469f286e6a6f874773f09cd26731bb1db9e4e98232c3d2c0f062b09db6d46f29b4ae54cbea7b8f30d24f08e3962e6747b6fe8ed601e34eb032c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
