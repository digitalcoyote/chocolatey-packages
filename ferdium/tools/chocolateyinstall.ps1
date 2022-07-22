$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.1-nightly.1/Ferdium-win-AutoSetup-6.0.1-nightly.1.exe'
  Checksum = 'bbc7557f36256086978325d8590e1d136965d0969f0c13240f7739fc01a65ecf503570a938d6b7053a11e859771d73c048b798fe23c01ce09c10fbbef68eda97'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
