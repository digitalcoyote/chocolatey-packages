$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/vvatanabe/gitb/releases/download/2.4.0/gitb_2.4.0_windows_amd64.zip'
$url32 = 'https://github.com/vvatanabe/gitb/releases/download/2.4.0/gitb_2.4.0_windows_386.zip'
$checksum64 = 'f4b3f3e0b83aa451bf4664c6d286e3bc7d914843a26d98dceceed18adda4398f1b9f352fe6b2429b0d5ebced79dec677ee8d1f3a1b6bec64e9586abe2b9986bd'
$checksum32 = '27cdac2cefe0b2530d7d76efc2b2fc565e0d3718fcc7b233034ebfa3366283b2af3e30ef4e82c8614dbe24f2b2bb2925c43b27db4b628cc19b65e78e982b9863'
$checksumType64 = 'sha512'
$checksumType32 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName `
-Url $url32 `
-Url64 $url64 `
-UnzipLocation $UnzipLocation `
-CheckSum $checksum32 `
-CheckSum64 $checksum64 `
-CheckSumType $checksumType32 `
-CheckSumType64 $checksumType64 

$tempUnzipfolder = Get-ChildItem -Path $UnzipLocation -Directory -Filter 'gitb*'
$tempUnzipfolder = Join-Path $UnzipLocation $tempUnzipfolder
Copy-Item -Path "$tempUnzipfolder\*" -Destination $UnzipLocation -Force
Remove-Item -Path $tempUnzipfolder -Force -Recurse
Rename-Item "$(Join-Path $UnzipLocation 'gitb')" -NewName 'gitb.exe'
