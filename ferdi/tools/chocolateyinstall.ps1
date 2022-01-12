$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.7.0/Ferdi-5.7.0.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.7.0/Ferdi-5.7.0-ia32.msi'
  Checksum64 = '0f2ef79e81be2301aa386f04d670588e3e9df352fa02e4dfe9d940d5c6842380d72c25891adc1287001595db813bb441fa3418d1fb6ffcb9d1c8cb20460b80ee'
  Checksum = '79b4307db9bcf5ef6d35aefc9274828459a7295a90ac4d3fe575fb2ca7622d9e885f312d501a7a7cbc30a0b965f339caa802ad48aa1f07130436c0030b41a37d'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
