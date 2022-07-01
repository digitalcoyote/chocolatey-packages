$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.23.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '1122c9a225b33a076f6754e36b9c2c29c8843cf413af65e69f7a9ca938b2dccbf3272d9fb02a88dfcd6170e5a2c50e94fbfcf81dac6750ecdb8b216d04cfe526'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
