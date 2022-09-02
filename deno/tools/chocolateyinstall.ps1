$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.25.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '89eb8d7f8101990432c9ac6f9c51b93074d013aa3b807e986385c3b2762fa87e7d4f14233c5f7d02792f8e149d45f1fdfe9cafbe4ce98c23c737c901a07c8f1e'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
