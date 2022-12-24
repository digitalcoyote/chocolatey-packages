$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.3/Ferdium-win-AutoSetup-6.2.3.exe'
  Checksum = '12c5b6c9b5c11b2b34228881a419e6cc066c48018b1be08b7a7a054eb7fad82794572be2217a9d4f0c9fa2cb58b23a7f9971f4be84c1761e21bd45a255833f2b'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
