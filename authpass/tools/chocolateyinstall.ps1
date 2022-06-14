$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.6/AuthPass-setup-1.9.6_1904.exe'
  Checksum64 = '77bc41632c72a9efd0d82f8ca44961de26f7294e77b3daba12d84bcef26c204737a28e0c6fcd9eb8d7cbdd1d8ed67ae0a49b443ba3f10340eda26d2946ba05d2'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
