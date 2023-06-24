$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.4.0/Ferdium-win-AutoSetup-6.4.0.exe'
  Checksum = 'e777f30b87b7fa1742db4b7591a3825c0eecc2ddac9e983448ab453c736c7590891c9314894c36e4e0de73a1d9490a8027ff3faec268c0f85d36546f9bbe2852'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
