$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.8.2/AuthPass-setup-1.8.2_1745.exe'
  Checksum64 = '57150c69811f0ab820a9c7b5dfbbf669500839a6c809ceb4e3a02d487cd572b515564688aef3f47a4b78be7e1602640e03b6befd596fb750013acd9cadc69e06'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
