$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.99/Ferdium-win-AutoSetup-6.0.0-nightly.99.exe'
  Checksum = '304abb9baa5abbd461bf6a5eb2ab242d5f97edbc792e3e1c77b148bd38bb6719dc909fd22bf727423bfbf0155918c8dca45c1653336702f58c5b9322cb7d3db6'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
