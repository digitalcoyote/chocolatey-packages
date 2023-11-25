$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.1/Syncplay-1.7.1-Setup.exe'
  Checksum64     = 'd79897727d5a5aa36889f94c30b76e3ba4cd25b7e4fe9f8c8183410e2d93636d63f8c49fbe9ac76482be68e997e6acde1c621f5b8a0280e2d8961992485f08e5'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
