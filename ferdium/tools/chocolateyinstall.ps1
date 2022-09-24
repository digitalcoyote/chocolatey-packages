$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.0/Ferdium-win-AutoSetup-6.2.0.exe'
  Checksum = '7ed9728081e1912432fbd198e5da0f0c374f4e508b1cafe075ace0d8fbdd56319a64191deeda04391cd594336eacb35b8ee0dbf130d7437878c2b9de06619122'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
