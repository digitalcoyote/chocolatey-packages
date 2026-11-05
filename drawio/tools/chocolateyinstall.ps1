$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$drawioversion = '32.6.10'
$url        = "https://github.com/jgraph/drawio-desktop/releases/download/v$drawioversion/draw.io-$drawioversion-windows-installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'drawio*'
  checksum      = '0c620b0f7aebea8043618b72825726c4fa541220ac4d8889f00f585daf4d471c74b822c7e217a7b71cf9d4d11b56e4bb7f350d675c04a22474f8341be38c9a56'
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
