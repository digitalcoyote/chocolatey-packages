$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$drawioversion = '21.1.2'
$url        = "https://github.com/jgraph/drawio-desktop/releases/download/v$drawioversion/draw.io-$drawioversion-windows-installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  #file          = "$toolsDir/draw.io-11.1.4-windows-installer.exe"
  url           = $url
  softwareName  = 'drawio*'
  checksum      = '384c1348b992c10fd287140b52fecea812331f575160b3853ff30b14ad41a044c91deb836977f70f1fba2a6ea3f8f66ebce0692f65e704f0634ef3c03ed5ea60'
  checksumType  = 'sha512'
  silentArgs   = '/S'
}

#If ([bool](get-command Get-ChecksumValid -ea silentlycontinue))
#{
#  Get-ChecksumValid -File $($packageArgs.file) -checksumType $($packageArgs.checksumType) -checksum $($packageArgs.checksum)
#}

Install-ChocolateyPackage @packageArgs

#Create .ignore files so chocolatey does not shim the Exe
$files = get-childitem $toolsDir -include *.exe -recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -type file -force | Out-Null
}
