$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.25.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '4e3daf990ceddd09556fe1e5eb10c6ec644662de6eb69187462867282f813beec036a65296094ba794c5a3748bee1b68f7ac3de52a684b9a4bc3db184964c045'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
