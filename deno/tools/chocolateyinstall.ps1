$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.13.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '612d793ce21391459b6e400faffe574d9334f0783e0268e6157e5ffc7a2341c47ac07862f59ca8a5d55c2a81dd35fa8b5bfa966c0f94e43b973de4456c998dd3'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Write-Output "Run 'deno --help' to get started"
