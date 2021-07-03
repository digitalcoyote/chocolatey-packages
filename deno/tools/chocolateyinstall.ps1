$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.11.5/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'a9f8d94446f6cd77c3ee2fd30987ee3a40d69132c3ecc52ec9a750e3bb5aa201f380646f23c45d84151b59ed0033b5a83d1e222bde48e21e2a0f7d5f2d32c71c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
