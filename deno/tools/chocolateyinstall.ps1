$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.9.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'cb58125d7ebeaa94e233e74d3dc9a7248c056826f2811b745dff07a53689648c6b52ec410db59b30154609f633fc8f76ec1cf5154fcdb80be8fc559fdcc56f38'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
