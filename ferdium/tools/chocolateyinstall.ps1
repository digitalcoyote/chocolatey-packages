$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.86/Ferdium-win-AutoSetup-6.0.0-nightly.86.exe'
  Checksum = 'de9ab2d201b385f8d7110c77299282bf961102cb2e7c2dd5ca90746956048f258d97ab4072da0938cee3a02133ec45852b198429ca5d953704b282a3f301a202'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
