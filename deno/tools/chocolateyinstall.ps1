$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.15.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '8af17dfa8709fca380f8028db0d0c0b9a6ffc29c5b119182e0dbc0e9e03b33bbea20ff75cab40d979c8d9f9c10dc839237d863c5a796bf3e324a74aec7b2cd9c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
