$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.6/Ferdium-win-AutoSetup-6.7.6-x64.exe'
  Checksum = '8b2f6d084cbc38fb9afb3f6870cddba57438565a98e28e3b5565e4caf1943d65fd99dab90dd5d9502493fcc45e8254e26dee49e231d5f49c8b7a0fb11affbf06'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
