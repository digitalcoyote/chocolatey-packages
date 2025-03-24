$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/warmuuh/milkman/releases/download/5.10.0/milkman-dist-win64-bin.zip'
$checksum64 = '78ffcc192e2b4367e367318da4259b989a98694b7ba3f023efd8a64bbdd68e3a007d860f9104f616225c00710ef3aba208c5988e550c7645dc9bc9fcb3afda1c'
$checksumType64 = 'sha512'
$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
Install-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -Url64 $url64 -UnzipLocation $UnzipLocation -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
$ExecutableFiles = get-childitem $UnzipLocation -include *.exe -recurse

foreach ($file in $ExecutableFiles) {
  if($file -match '.*\.exe\.ignore$'){
  #generate an ignore file
  New-Item "$file.ignore" -type file -force | Out-Null}
}

$ExecutableFolder = Join-Path $UnzipLocation ("$($env:ChocolateyPackageName)-" + $env:ChocolateyPackageVersion)
Rename-Item -Path $ExecutableFolder -NewName $env:ChocolateyPackageName
$ExecutableFolder = Join-Path $UnzipLocation $env:ChocolateyPackageName

$InstallLocation = Join-Path (Get-ToolsLocation) $env:ChocolateyPackageName
Copy-Item -Path $ExecutableFolder -Destination $InstallLocation -Recurse -Force
Remove-Item -Path $ExecutableFolder -Recurse -Force
Write-Host "Installed $($env:ChocolateyPackageName) to $($InstallLocation)"
