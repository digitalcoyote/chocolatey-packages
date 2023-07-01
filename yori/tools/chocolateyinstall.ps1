$ErrorActionPreference = 'Stop';
$installDir = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = $installDir
    URL = 'http://malsmith.net/download?obj=yori/2.0/win32/ysetup.exe'
    Checksum = '6f737fcdadc4c70da06ddee3ab0ae0192aa26ffa4351b64d6981ba948b0872d2'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @InstallArgs


$files = get-childitem $installDir -include *.exe -recurse | Where-Object -FilterScript {$_.Name -ne "yori.exe"}

foreach ($file in $files) {
  #generate an ignore file
  New-Item "$file.ignore" -type file -force | Out-Null
}
