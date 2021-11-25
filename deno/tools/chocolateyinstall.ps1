$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.16.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'd95860c624090c5f19d2c37bc0470f610b14ac715b21ab147bc7160a4d95399583f17d4bb02418757970f61afa69e84fbf40546210015598a1c95d717435474f'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
