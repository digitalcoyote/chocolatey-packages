$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.4.1-beta.2/Ferdium-win-AutoSetup-6.4.1-beta.2.exe'
  Checksum = 'cb752a704b4fce6f3e57ddc9a4f8e926f3ee6513c87e21dc4d1ae8d0e25cb82db6356cda1fc91b9cdbebdbb6ce5a584931a6134e40431089a52ce9ee861def46'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
