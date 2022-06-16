$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.23.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'c864cf1a0db17c1337e9af200950788a98c2fd64e9e78a47c9020989ccb2bc1072f12ee2f40238ace86dab95abba49afb6a01a5a3ac2a85c399f88ca946b8b80'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
