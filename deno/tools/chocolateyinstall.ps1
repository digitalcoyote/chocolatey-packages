$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.9.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '05afe6915130d9561535986ec7bcb82f37f4075126e27476b33cb80ff65d2f0093b7dd270850ed60ea9db6b75187f6afaedaf7195d875a88cd9f9072977de167'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
