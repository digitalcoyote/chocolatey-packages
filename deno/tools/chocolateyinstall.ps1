$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.18.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '0fe644b1ee46bfcb09d3f0be5b4a2de3241fa17fa16886dc84d01a7d47cc5ea433ddc26d02a1a9cda71d47320d516468abd9da68f4769ebcbe00b0888467a137'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
