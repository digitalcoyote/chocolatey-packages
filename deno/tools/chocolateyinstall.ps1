$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '3007278ebb4bb88b33fa913be0c481ffa27568efff74772ee7d42b425d3e0d01ad27f0e9021e63c54e4d48ecf52a3790a5c3e368bd6a278857234b31ec31ef72'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
