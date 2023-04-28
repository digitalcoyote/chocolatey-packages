$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/denoland/deno/releases/download/v1.33.0/deno-x86_64-pc-windows-msvc.zip'
$checksum64 = '81105364fe5973351c2747d91377efc5689907a04b8dc51925d2c6ad204457330e3acc6e6940473207d2e70ec4506a5660963ee01de4578c45fa338750bef20a'
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
