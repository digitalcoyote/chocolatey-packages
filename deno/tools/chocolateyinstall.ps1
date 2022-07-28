$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.24.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '2115233e9a7fbd8458e2376ce40be04dc55a521187d7e735b8fffc193ed353da9cb5c8408cdff10edb81d8a2a03e48640978ec8f7e73b17ebc019a016ff5c8ab'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
