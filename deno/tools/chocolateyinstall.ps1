$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.16.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'ddb26c0abedf794b1e3704da420fb61f44c4eca3d8d953aa3d4dc55406b74074f8b2153a5001d62c46db3e222b3e05ad469f1a30676e8422cbabd30168f279f6'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
