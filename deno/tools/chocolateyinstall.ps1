$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.12.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '98a04170b894b256430ceffaf87502a75663606a2a43dabc1403acfd50a501badec3c3d9f76ac7e055aa734082dae617c031c42bbbc8aac56af0a3201a6d000d'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
