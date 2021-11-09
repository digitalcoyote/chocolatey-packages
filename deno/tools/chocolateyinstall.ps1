$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.16.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '72d82e4f0a09582bc7409758e3ae736c96f6509c848436209332290252ddae2c5945d22595d486ca645b6b5b971c8c29cfa8b7ab4dc08fd819e03d881184e0b6'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
