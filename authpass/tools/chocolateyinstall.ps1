$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.5/AuthPass-setup-1.9.5_1896.exe'
  Checksum64 = '4754cf98351e519a7a1ea28f46a6e39a4347909eba4832963bb3aec180198baef07da5fea48fe4abc67356233ec6bd596b61ffe019a0f3de74d55cb99b35abb4'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
