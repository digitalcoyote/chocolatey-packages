$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$drawioversion = '24.4.7'
$url        = "https://github.com/jgraph/drawio-desktop/releases/download/v$drawioversion/draw.io-$drawioversion-windows-installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  #file          = "$toolsDir/draw.io-11.1.4-windows-installer.exe"
  url           = $url
  softwareName  = 'drawio*'
  checksum      = 'c7635bc6ea138c445db8c893c57ab9f666fa62af49a2484e0ae563c628dfd3096c412b595ba9be4f91a11802f5c8f984f4ac33ba3d4d467a72b4cb32573a8371'
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
