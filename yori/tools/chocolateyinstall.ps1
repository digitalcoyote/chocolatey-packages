$ErrorActionPreference = 'Stop';
$installDir = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = $installDir
    URL = 'http://malsmith.net/download?obj=yori/1.90/win32/ysetup.exe'
    Checksum = '0236d87b1a4345273823caf466a44379550506cdd42f00ecafac9c99dd9bda24'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @InstallArgs


$files = get-childitem $installDir -include *.exe -recurse | Where-Object -FilterScript {$_.Name -ne "yori.exe"}

foreach ($file in $files) {
  #generate an ignore file
  New-Item "$file.ignore" -type file -force | Out-Null
}
