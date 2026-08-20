$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.2.0/Ferdium-win-AutoSetup-7.2.0-x64.exe'
  Checksum = 'ccf59bdc7318bbcd51b3478c0857dcd20976c0b2de9f77d93faacde7346186cd34d594099fd4248dab2a09b2ceea45bf259fa6ebdf1987ab662f799e3a5435b9'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
