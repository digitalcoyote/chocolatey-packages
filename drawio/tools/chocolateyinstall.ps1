$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$drawioversion = '32.5.5'
$url        = "https://github.com/jgraph/drawio-desktop/releases/download/v$drawioversion/draw.io-$drawioversion-windows-installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'drawio*'
  checksum      = 'f8ae514ed7cf1a693527640b94b67ced2b6ccc2fceba6d5afbea85d787c48b5cf25ab5595c1af87aa8c56790b795fd2c4365c9ab80b04eb95e1a61253792e196'
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
