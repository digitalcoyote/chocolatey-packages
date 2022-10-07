$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.26.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '5d3bce858a04042af5de9538444bba96ada9c4ec35921f1431633d19b952bc56fcf39dc9513a02c42f5212db43de79bc5d184f0d7a42e23301ba80f130e45c12'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
