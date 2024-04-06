$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.2/Syncplay-1.7.2-Setup.exe'
  Checksum64     = '9eb3982c40ed5ea85ae1cad7654890b0a6e6efccfc15de7205a165824ab86f2a575fa38b38b9b0d6a9c13d4f8ab80caea31f2227e2db2efbe0828afaa38c2df6'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
