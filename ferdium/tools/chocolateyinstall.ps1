$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.2.2/Ferdium-win-AutoSetup-7.2.2-x64.exe'
  Checksum = '53ce68381cd4c90020fa7cb0cbeeb282be0035c7e1525d7fe1af53ce6e0ab58216381a455c9034384e1e708bf9e992e31b073e99b4a8b1af7f8408ec6e8fb460'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
