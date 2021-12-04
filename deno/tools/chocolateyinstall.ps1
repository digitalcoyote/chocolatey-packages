$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.16.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '3c41eea50c9b1bce93bf7c44725e25537337e90cc9431613137fd504270cc4e5a56c44cdfdeb5f0d68d95672eee8f191d85f0c1f576b1bcba293c501dbd737f9'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
