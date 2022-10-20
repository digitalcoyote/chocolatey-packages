$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.1-beta.1/Ferdium-win-AutoSetup-6.2.1-beta.1.exe'
  Checksum = '28c49fcaa6aed4a3132ec726200e0e6fc5e2d43083dc142be5f5a2bb924c5ec52a0852cf14667b760d46549360b3aa34059fe03b4ec7dc814068d04082b0199d'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
