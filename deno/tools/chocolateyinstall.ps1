$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.25.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '04c9e6a9df6c7ef720ba510d2fc159df5808a51a35413f47a0f1fd8259ab868c4eb6bb5f148da14ec92d12c9193d6e768ccd28e0c4a166e4e41dcdcd075bb130'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
