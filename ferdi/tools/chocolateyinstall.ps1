$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/S'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.2/Ferdi-5.6.2.exe'
  Checksum64 = 'db51ce229955bc2c898d0cf62065353502f6f2bd03eb00de4c46b24bc1f0aca4286c9a5d65b3243ec704b9be726cc31dbc062c0a929ca0281b47048e71311480'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
