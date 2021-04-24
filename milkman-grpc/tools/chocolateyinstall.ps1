$ErrorActionPreference = 'Stop';

$checksum64 = '75E58663F5E8858E6D66E6ECD62E6A66F05F046671B45CAEA01CE85F24A083DB0D13BEBDB50773E194D7DB07EEFAA55B30FB6DFF9C7ECED70CA4F2B8423E90EB'
$checksumType64 = 'sha512'
$JarFile = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path (Join-Path 'lib' $env:ChocolateyPackageName) 'tools')) "$env:ChocolateyPackageName.jar"
Get-ChecksumValid -File $JarFile -CheckSum $checksum64 -CheckSumType $checksumType64
$InstallLocation = (Join-Path (Join-Path (Join-Path (Get-ToolsLocation) "milkman") "plugins") "$env:ChocolateyPackageName.jar")
Copy-Item -Path $JarFile -Destination $InstallLocation -Recurse
Remove-Item -Path $JarFile -Force
Write-Host "Installed $($env:ChocolateyPackageName) to $($InstallLocation)"
