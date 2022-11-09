$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.27.2/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e3a17ad76662562dabc798aa2c8bd0667ec50e6d2638edf4defcaaec0d53d6a12642cc98093f81841d36d6ff84926231e0ecd0877a3533d28b4dfa1e29cec5e1'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64

#Create .ignore files so chocolatey does not shim the Exe
$files = get-childitem $UnzipLocation -include *.exe -recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -type file -force | Out-Null
}
Install-ChocolateyPath -PathToInstall $UnzipLocation

Write-Output "Run 'deno --help' to get started"
