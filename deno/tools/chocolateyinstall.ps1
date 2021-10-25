$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.15.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '71afefa80db3c6fe3d43be632f68a4ed0364bdd49fec1e4fdac107a3c11b48b946dd1bd8b81fc345d59cc9ecab64c8305f9b7032346d3c414814ac59fe352df6'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
