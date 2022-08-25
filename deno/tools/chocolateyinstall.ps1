$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.25.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'bc5a745c50ff079ae94e21dd86633ffa302903270c3de9ea08e4cccdd66f6c400a01e423eea6f1068e7efff3551d802d1d638adf8f8797ad4bea41b091bfdc00'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
