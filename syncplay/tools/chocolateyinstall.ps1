$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.5/Syncplay-1.7.5-Setup.exe'
  Checksum64     = '3679d5c7b1470382ce411ce1082797b27ff92d54e5c40f1299b79becf12b2e2161dfb1d36ca5e2ef3fbf2c108cb72855b984872c51716eeb6f3e649a8c08fce9'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
