$ErrorActionPreference = 'Stop';

$checksum64 = '01B096ED4187E328DCE7ECE45F41AE1EA301E940056E47AE4EBEC79EBA9F0EA6F6FFA2EB09EC7D4CDBDC32C4D47E32875EE822DD10C7B6AF7BD8B3D7E262280E'
$checksumType64 = 'sha512'
$JarFile = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path (Join-Path 'lib' $env:ChocolateyPackageName) 'tools'))"$env:ChocolateyPackageName.jar"
Get-ChecksumValid -File $JarFile -CheckSum $checksum64 -CheckSumType $checksumType64
$InstallLocation = (Join-Path (Join-Path (Join-Path (Get-ToolsLocation) "milkman") "plugins") "$env:ChocolateyPackageName.jar")
Copy-Item -Path $JarFile -Destination $InstallLocation -Recurse
Remove-Item -Path $JarFile -Force
Write-Host "Installed $($env:ChocolateyPackageName) to $($InstallLocation)"
