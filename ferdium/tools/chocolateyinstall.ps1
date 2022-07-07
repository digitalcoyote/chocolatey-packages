$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.90/Ferdium-win-AutoSetup-6.0.0-nightly.90.exe'
  Checksum = '1bd2ffdc036c8da3d6e8084d6417a684da7649478bc4396a390e0a3d971f4307494bf741f511808319b8f53cdece47ab879d15e0984756b44dc5965de6e56aa7'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
