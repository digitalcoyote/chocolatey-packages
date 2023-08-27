$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.1-RC1/Syncplay-1.7.1-RC1-Setup.exe'
  Checksum64     = '35e7e9714a13a62dadf378f85f61fcee7a31d8ee05088b265ad5408db80940cc91575a77391e296ca1018bfea3b3ab509a604a9f2732e83a098d6e57079f6a1a'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
