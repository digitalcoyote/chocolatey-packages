$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.23.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'be295267b8cddb9d6ea0fd81a3b60a3e09b5e895a30fee5fb21f843ddc465d8b22d31f55de9152ab7658540b3872deaebb419ded6c1f4b5d41fcdc5c1d6f6541'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
