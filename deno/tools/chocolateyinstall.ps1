$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.21.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '0449b34e4f3b939871d6d2d276bddee5fdb155528f12c8870eaab356d85b1633a4fb7ed566f81072c0f23c86b047e5b0feb9675cfd07b2242b14a8fe60b99ea8'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
