$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.92/Ferdium-win-AutoSetup-6.0.0-nightly.92.exe'
  Checksum = '0d0e41e3c5b79d1741f4e5a8dd400cf30917ebeecdb974ca644858aea4317cb2f0fb4edc2f58694d0c4c8cf14691159f3affb2fa3bfb438bae6a613620b23862'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
