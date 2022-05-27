$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.22.1/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '856608709b45e90b1fd6bff6d6d89ee437473b998f7ee48bb9293fa9c34d494588d77af1a182ab315b8430c23e001a3a36b80f9e3b62bf88cd9b7c0c32efc2f0'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
