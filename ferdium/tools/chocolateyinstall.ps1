$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.85/Ferdium-win-AutoSetup-6.0.0-nightly.85.exe'
  Checksum = 'edb481e20c1daaaf51789afc57594442cffcd50345b606e83a5a39f7563a64336647f87ba3932d3d37a0c6a8dad4598b6d6d83f6032a7359ef714691de4b6f5f'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
