$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.8.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'b8d9005b2b2edced42e00938382dbd85bb81cae064bba775076551ed285b77a2f00e1c62fcf3de9d4660fd465be14f1305653a7d293daa1b44c9105c51078fc0'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
