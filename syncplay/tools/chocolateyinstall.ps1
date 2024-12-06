$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.4-Beta1/Syncplay-1.7.4-Beta1-Setup.exe'
  Checksum64     = '54687f2f2e59413934c5dca3c6aea36a43a5a49fb313f87a560c4e867cc3fae7a8be662b00db0dffedeee23b4f579ef2f773cf91069701f1c8ac669ebcd18fff'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
