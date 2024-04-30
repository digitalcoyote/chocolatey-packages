$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.3/Syncplay-1.7.3-Setup.exe'
  Checksum64     = 'c8b5a3504fab9ace364e3ec4f6e7317dabcaece0239a5eaba8568e0e4fb679ed65172fd922323c49ef5fb6ec0006755c05ef58b9bff3b54b66f54c849317d2bd'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
