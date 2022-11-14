$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.28.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '2df0129a6e26dc425a10c048137b3dca1d9495cc65e8c95f2e2d723d6cf55ca1b884e0e2cb0ad39ff0fdb2364c3227607123ea121119b6b20b57a23a5ccf25a8'
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
