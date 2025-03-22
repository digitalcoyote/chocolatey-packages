$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.4/Syncplay-1.7.4-Setup.exe'
  Checksum64     = '6a4ecf412e4d677c26d0df17640964f2812f85dcff29d7312b358b2e01c6308111e8aab864f9c97b0511ba5d89bdbe41dee2a774a9d7ded6c3c23bea36ed6c5a'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
