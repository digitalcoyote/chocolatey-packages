$ErrorActionPreference = 'Stop';
$pp = Get-PackageParameters
$Lang = "1033"
if ($pp.count -gt 0 -and $pp['Lang']) { $Lang = $pp['Lang'] }

$installArgs = @{ 
  PackageName    = $env:ChocolateyPackageName
  FileType       = 'EXE'
  Url64bit       = 'https://github.com/Syncplay/syncplay/releases/download/v1.7.6/Syncplay-1.7.6-Setup.exe'
  Checksum64     = '3b0230de50a56d8f6af0c6a050793a221a5619276db121014df1c7f209c50c595d25b9bcb5e293b6d0639d7e34efd1337103397ba70632d78bf3e449c6547bd3'
  SilentArgs     = "/S /LANG=$($Lang)"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
