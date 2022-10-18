$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.26.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '9254e70c49908533ce3fcd4661661f2327842976d60308891645f54b4684bc670e037418b57af70ae2647b6458fc17a83d9b482a8ae530d146dc2f61c0e542b0'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
