$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '544e32bf7fa45d41bedffa4789f36240cb3e4ea0c7c98df5cb0baab267b55d81c45b2b001ac40bfddfd72647f3c11f4a900394a8567aaea93864aeeb965df602'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
