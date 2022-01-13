$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.17.3/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'b1f0133f79ecf575662908c7a8d8fda7f2504f34e6d1d95eef052aeff9b795a9ee4af28c84241027e9086449406fd9b71fcd70497228e91ca055dfb59e1f8a81'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
