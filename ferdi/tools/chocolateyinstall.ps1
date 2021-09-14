$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.2/Ferdi-5.6.2.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.2/Ferdi-5.6.2-ia32.msi'
  Checksum64 = '0803279da481056229a95041bcab816adc9b779531d6e6e3512ea2e41d50b74bb193803421277135f1b03756d0513858a4e8d01f545332675f5174866b24559d'
  Checksum = '1343ffa8c23b801caf4c923f89c2b9d1ff8b620384d1edf610783fcf1407d84d49d3a897caac6e9b597e6138c69b293e89b9242bbe9d3ae3998b4efe128353f7'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
