$ErrorActionPreference = 'Stop';
$installDir = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = $installDir
    URL = 'http://malsmith.net/download?obj=yori/1.51/win32/ysetup.exe'
    Checksum = 'bf5c81b88e3f0b495a9475045a15e0811bca1ec68336d9b3aa513c502f1b819c'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @InstallArgs


$files = get-childitem $installDir -include *.exe -recurse | Where-Object -FilterScript {$_.Name -ne "yori.exe"}

foreach ($file in $files) {
  #generate an ignore file
  New-Item "$file.ignore" -type file -force | Out-Null
}
