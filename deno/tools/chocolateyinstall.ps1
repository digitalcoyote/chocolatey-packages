$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.9.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'd00399a023a4d9f8f2e9fe66507c5daa12b0f3720cd765efa94febab50e0318fc948567bf30d323be3a1d0d5e1a9c7797f2eb52eb447c26b8b4c7f4ac0193081'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
