$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.14.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e717337464ff5ad294071eb2b543ced8a913a77a785203ba896bf5443d40af7b64b1d9438977b74fa110fc98946fa95f8356e1a364ac2099e437b63626bb4201'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
