$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.17.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '01092862fa3d780703e27ea3b9f59841a4b6c7991734c26682bc56264a4f9e4a42128be209329b53379cffad1a77f0f109f3c912647f68a6468de5a05ff72793'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
