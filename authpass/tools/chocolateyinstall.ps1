$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.2/AuthPass-setup-1.9.2_1834.exe'
  Checksum64 = '50e52bc1a255cc005d8e058e1a7a65aa3693ea4785657169172e021925a2bac0d5e7a4aaec2e7d9238189141c60bf60b30968ed657129465d29eadcb00523e79'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
