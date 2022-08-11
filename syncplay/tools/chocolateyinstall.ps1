$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/1.7.0-Beta1/Syncplay-1.7.0-Beta1-Setup.exe'
  Checksum64     = 'e39d63a005083140c34d17a7322bfc52ad243e9fd7191d73b5a32b15f899a504adcbbd5fed3b318c89c63cd7c270b56ab5640f691b63da2f9dfb33bea4b032d6'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
