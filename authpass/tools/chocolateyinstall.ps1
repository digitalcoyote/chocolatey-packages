$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.0/AuthPass-setup-1.9.0_1762.exe'
  Checksum64 = 'ad9ab023de100ff9a22eb1f13c42aea9e7c55afebc307dd76aa6f8a3feb7a44822c8fc133bba038047a0e8ed779e1ffdf1ef0f6c0b70e60a73dbb7d07fed8ecd'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
