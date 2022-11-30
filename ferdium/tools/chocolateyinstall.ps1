$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.1/Ferdium-win-AutoSetup-6.2.1.exe'
  Checksum = '978d05b7a0ecfa77790ca2a3faa5fa7ef949c6d9cf6f8a3032fa76c844611972916781b1fb6675a82dd028026ba9dda1888ef01298cdda12bdd06bccc6710428'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
