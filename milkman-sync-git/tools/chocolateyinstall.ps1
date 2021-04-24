$ErrorActionPreference = 'Stop';

$checksum64 = '8F3C656F46CCCE2BCE8EFC735F1FD2A3904AA98976FF48B20406AC64272FB74CF4AE51B15B8E6F5C3AAA81E9348C74EB046040E8A5ABB3C3862F41435B5004C2'
$checksumType64 = 'sha512'
$JarFile = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path (Join-Path 'lib' $env:ChocolateyPackageName) 'tools')) "$env:ChocolateyPackageName.jar"
Get-ChecksumValid -File $JarFile -CheckSum $checksum64 -CheckSumType $checksumType64
$InstallLocation = (Join-Path (Join-Path (Join-Path (Get-ToolsLocation) "milkman") "plugins") "$env:ChocolateyPackageName.jar")
Copy-Item -Path $JarFile -Destination $InstallLocation -Recurse
Remove-Item -Path $JarFile -Force
Write-Host "Installed $($env:ChocolateyPackageName) to $($InstallLocation)"
