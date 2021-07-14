$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.8.1/AuthPass-setup-1.8.1_1717.exe'
  Checksum64 = 'a29dde00f80bf495c83fcca401d386fa37e0471b666d2c7f6add1ff0511948c7a0033f4fe3ab76f200f23342cd0ce7bb5c6713013e60131567dc77cbc58aef40'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
