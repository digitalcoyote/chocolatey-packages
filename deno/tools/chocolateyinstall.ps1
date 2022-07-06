$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.23.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'cefff553ed1aa13bfbc43cea9f02840420a7f8911570d1b7c2d2b69e10afdbb86bc7b8d4a7775421c6d713b1d78b0d10eaaf9a30b528874cd2062d5c864fb65f'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
