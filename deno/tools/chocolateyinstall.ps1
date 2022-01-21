$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.18.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'c2e8a8474601afd01339f63610f6a98dd0b4136ef6cd8a1a5017bed22e84c072a9b8231d4430048b819c514dc2d7f8ebb4908a0171fd781d465e2e0380e1c2f5'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
