$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.7/Ferdi-5.6.7.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.7/Ferdi-5.6.7-ia32.msi'
  Checksum64 = 'e7c63bdec942d160e60d50c17d78ae9568380698b426182c73fde1e3a8fd2f25b3af9f878c2dd3baceb1d69d4451a824e579d21899072c25b68f9fde639c4e87'
  Checksum = 'e78f3ee8c286d72c577083fa94db96c62d356e358d11316b6f7a36c39a3310b28945489dfcfd173f3c00b2c42c5d24b6ec08c2fe6288508b22124b75f9971374'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
