$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.19.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'c86f6b3e4696342ab2a74214b79fa95ba995ba152618cddb0c039ce9b8401f8c298557ceb27e0406402929c243bc5059e0f4e341c7ab8defb93efd19bd9b6f81'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
