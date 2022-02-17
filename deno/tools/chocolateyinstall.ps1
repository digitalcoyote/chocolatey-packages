$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.19.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '6f218fa8e5f0ca89fbf008f008d4a956093cd5127708e13c8958b731742e46c4f4cc304aabed0957d04e59e2c41f7f7e67fa71fa4399c3821c382d1bb833cf69'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
