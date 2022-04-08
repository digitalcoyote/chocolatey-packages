$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.5/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e989cedcfcfd1fdca6acb2d680affa344f466225e645a7279c166447a0a06ac996e674052ab45d6ba35c7a39d44bcfc944cce737210251f667ce295215f64c4c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
