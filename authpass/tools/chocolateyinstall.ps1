$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.4/AuthPass-setup-1.9.4_1872.exe'
  Checksum64 = '7ec17b4bc3d99b8743a3af2d331c5fd71e6efabac5e1a033bef3b8c668c251a1dd78e646d77ec0efb29ea3ed97ad9bac4bb7e58d8db0e4a3b5c71eb4f9e4b252'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
