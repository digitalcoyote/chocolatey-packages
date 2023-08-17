$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.4.1/Ferdium-win-AutoSetup-6.4.1.exe'
  Checksum = 'a8b1d5864864366deab0d68c26ca9f9aef8256c18dcd573738090f5417477452fb75d9ee6610c4fe90fce4f3d4f4f3fc5f8b1157f4b37bea04dfdd25e5eb9f2a'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
