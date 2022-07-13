$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.23.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '2a78561077d974f1b00a9d6a150ac7feed5404c64c55e88e0cbebafec65690bde13ed888f4040034958f50a7cb85fe35675bb9234088aaba5252660fe1e69935'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
