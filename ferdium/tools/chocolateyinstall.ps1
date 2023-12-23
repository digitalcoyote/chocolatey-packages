$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.0/Ferdium-win-AutoSetup-6.7.0.exe'
  Checksum = '2728387a40a8703b0fd75053225c21d3eb7a7846f7c5bee77e620b5a8caea2a4d43c1a89cc27fe951390c613f0a73ec3772ad4c4294bec6f0a0c9544f97f7001'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
