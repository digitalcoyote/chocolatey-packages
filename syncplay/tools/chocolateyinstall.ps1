$ErrorActionPreference = 'Stop';
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.0-persistentrooms1/Syncplay-1.7.0-PersistetRoomsTest1-Setup.exe'
  Checksum64     = '908d96c8e892ca3fbc1540b0e677e472ad20517e7be11adc85ae82898e68d252788356db82e1d012d48f412cb9f9f147e483bca6eb94def5839b6f60d8ed11b1'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
