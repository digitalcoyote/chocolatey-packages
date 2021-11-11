$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.16.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '2f8252ce561060bcc9114f4cd9588e97e85d2158fb817b5fc8d754572e6d0997218b4058486fc31ce1b09d30082f3b977d27aa36660f17cc5bc7b16cdec6cfa3'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
