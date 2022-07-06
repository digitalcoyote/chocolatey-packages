$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.89/Ferdium-win-AutoSetup-6.0.0-nightly.89.exe'
  Checksum = 'b3248461505bd298da403964ca9680da5b76128451a4145a68168666e470472447e9023aadc149e7f8a30b67fd65cf397c3780fbd08bb3e9d065a689090a605b'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
