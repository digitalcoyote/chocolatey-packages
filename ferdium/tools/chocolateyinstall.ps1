$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.4/Ferdium-win-AutoSetup-6.7.4-x64.exe'
  Checksum = 'f7f7a2930a0fd116d214e125422d212f73095a63c3d8ae44be27d8c5d719b89f886ce79850e4ae25d8af738d309736baa5c2e566ba6f38b03ff08d5fabe36282'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
