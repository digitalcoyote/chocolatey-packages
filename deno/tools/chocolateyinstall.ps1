$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'f972072abcc04ce250952144485af8557836cedfd692319868260dc642e838eb00031397c8510c2f16264b47a752e95330ba1b7d0e909f118418f48ebe470615'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
