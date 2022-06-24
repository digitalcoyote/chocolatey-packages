$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.75/Ferdium-6.0.0-nightly.75-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.75/Ferdium-6.0.0-nightly.75-ia32.msi'
  Checksum64 = '35f1e34b2786cfb64f5ad98656e9c4174c64246e21dccad7bb25e49a4d15fa5598fedb6e6e7b7a308b04bab7a1b4d0b26da4ac2f849c1eac767a9ed979284112'
  Checksum = '35f1e34b2786cfb64f5ad98656e9c4174c64246e21dccad7bb25e49a4d15fa5598fedb6e6e7b7a308b04bab7a1b4d0b26da4ac2f849c1eac767a9ed979284112'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
