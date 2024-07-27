$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.45.4/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = 'e7b677b73cb06391f60fe90aa48396e7ae92fa956c2155315e51b456027d38203fd12eace96231afd63362e2894f2790d2d7af6f4a33cf7bd9980c63a6a1a0c4'
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
