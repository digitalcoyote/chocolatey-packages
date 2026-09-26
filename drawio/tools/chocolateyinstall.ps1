$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$drawioversion = '31.5.3'
$url        = "https://github.com/jgraph/drawio-desktop/releases/download/v$drawioversion/draw.io-$drawioversion-windows-installer.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'drawio*'
  checksum      = '0adfaa2f5c0b805aacbf9ecc82e84d47d2a8bdf85f514a30adad037aec6b6bcaa8fd4da8eea7c0bbc8ebba1ba5388e28d30a19804c9afa8a309763ee3f0e2736'
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
