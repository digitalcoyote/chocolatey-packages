$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.24.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '48526248444f97b37bf1c9d9153b83ad9191a3579bb24086538c343549e7182cde0e966c22060de6b77ca3e8f0382015ed8758224a672a868c60710d2de006a9'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
