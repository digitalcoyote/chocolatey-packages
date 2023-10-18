$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.5.2/Ferdium-win-AutoSetup-6.5.2.exe'
  Checksum = '929c85d876dac6bc9687f91c214393f045505990b3142e8e1eb4b8d8dd4e704452f7605faef3e8ae180cda7c71f013a56ee32e5f256f3e71fa5b23de2d2ae994'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
