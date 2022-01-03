$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.8/Ferdi-5.6.8.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.8/Ferdi-5.6.8-ia32.msi'
  Checksum64 = '8765a2b4b0231e9708b31b54a034fc9b48bc3ce7f2a14d571b7255c2d95f666a3e6840db41e601613f8fa5cec4083fd58e36ec821c5c354c35a2979729c1ece6'
  Checksum = 'b932871316824b41530cf958ea8db27c8640ecc9e6a903f44d13d53a5b83f042ef29c3214e617aeb4ee23c2227dbfb090faa4009a3a782976e4a11085205cc8e'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
