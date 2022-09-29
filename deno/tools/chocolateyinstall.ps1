$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.26.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'ac10873a0c1fa2f1bc1035d3af6f181f228b04d4a71cd0aef75efa4a131df3de52999222e62c4d0480a0e81e20d338f203abcb7299685cdfab025591b19b845a'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
