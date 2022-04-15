$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.20.6/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'eb800402cb0acfb89b3c54df74c52cf527c31907051c17c8b297361d8e0fd0c3ea5ace275bbbeae062b19c1df5fb6518f9c06b9512af5e6216824331f8066892'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
