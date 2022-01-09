$ErrorActionPreference = 'Stop';
$installDir = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = $installDir
    URL = 'http://malsmith.net/download?obj=yori/1.70/win32/ysetup.exe'
    Checksum = '45b23f8b6eebfaaa7f429f1b116419e85ea738e079229d61ee4f331e5bc0d387'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @InstallArgs


$files = get-childitem $installDir -include *.exe -recurse | Where-Object -FilterScript {$_.Name -ne "yori.exe"}

foreach ($file in $files) {
  #generate an ignore file
  New-Item "$file.ignore" -type file -force | Out-Null
}
