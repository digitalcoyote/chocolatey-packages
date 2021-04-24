$ErrorActionPreference = 'Stop';

$checksum64 = 'E61C48572209CBF422B7D935B3D8EC3EBB8D624ACFDA8A9CCA385948DA85DC1908A8FEF8F9F4E5410880942B0F747756FD362086A606601BD3B7F6AB2BDDAB80'
$checksumType64 = 'sha512'
$JarFile = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path (Join-Path 'lib' $env:ChocolateyPackageName) 'tools')) "$env:ChocolateyPackageName.jar"
Get-ChecksumValid -File $JarFile -CheckSum $checksum64 -CheckSumType $checksumType64
$InstallLocation = (Join-Path (Join-Path (Join-Path (Get-ToolsLocation) "milkman") "plugins") "$env:ChocolateyPackageName.jar")
Copy-Item -Path $JarFile -Destination $InstallLocation -Recurse
Remove-Item -Path $JarFile -Force
Write-Host "Installed $($env:ChocolateyPackageName) to $($InstallLocation)"
