$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'd12052de2b54455cf6325248f65bb2a53649d1cc718788f15fa1a94dff50c258854571e3bc5ac89b8897caae094c4848a07c6bbaa093ce8d3a88753bfccff3ec'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
