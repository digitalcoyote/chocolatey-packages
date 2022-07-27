$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.1-nightly.4/Ferdium-win-AutoSetup-6.0.1-nightly.4.exe'
  Checksum = '632788085db7cd7a13b11b6927b8c1251347557183f9708d595168b541c6fbede63705dbb474df97e0429d27529becdfc3f55526b4cf6e9c72ba9cf4a1e852c3'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
