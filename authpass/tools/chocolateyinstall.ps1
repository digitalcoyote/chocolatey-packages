$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.7/AuthPass-setup-1.9.7_1940.exe'
  Checksum64 = '945601ad0443291ce7198c756c26326022b5b3d3eb9fa86f9e06ba3d19c3930b70030d65d56a2b0c36b5d9bb46dfb55f48b861d7e14abf1ff39d0830a91dafb1'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
