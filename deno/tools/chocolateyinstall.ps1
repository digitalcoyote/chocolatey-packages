$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.27.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '3eb0262cea76cc7ab1261ed0dacaeb61541454d8c78c1c0bb26ece7916dee1552e0154270cb04bd4f17b0a8ab42b3dec99746efe36963f628fe9bb1c59738fa9'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
