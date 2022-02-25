$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.19.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'f4eb9d8006fcedb1613191bd2fdfca8027b5bf633c5438993e852e82632af83237d8dbe7d1ef4a8a096202af61c5948dfa48ee2ae9ae4515e11e073a5e0d46bb'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
