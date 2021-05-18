$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.10.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e4bcba5efa77657d7fc7f3f8962838ea5101e6cf34b8971211d7a02eede8769e672167fbb8df8b1831789ea935c7a3cecf5d7688c9b7756c1918368222441fca'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
