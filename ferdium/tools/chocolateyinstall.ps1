$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.2.1/Ferdium-win-AutoSetup-7.2.1-x64.exe'
  Checksum = '08c442512c811e198ec59f4b8b9e5752cb7afa893552bd54bff286746446928fdb50e57106889a0cd6215a0476194f178d7cfe469eb8c2d9e6194bde272a32ff'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
