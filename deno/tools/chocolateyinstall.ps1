$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v2.2.5/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'f94efd7de44040d1306fa55b07f986a221a37acc405d2491f23a93bf5be9a06eb94a93224a1e2a45b0a67140868ae6d34d507643a266ed2b225b97b42db5f1b4'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64

#Create .ignore files so chocolatey does not shim the Exe
$files = get-childitem $UnzipLocation -include *.exe -recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -type file -force | Out-Null
}
Install-ChocolateyPath -PathToInstall $UnzipLocation

# Remove shims installed with the old package
Uninstall-BinFile deno "$UnzipLocation\deno.exe"

Write-Output "Run 'deno --help' to get started"
