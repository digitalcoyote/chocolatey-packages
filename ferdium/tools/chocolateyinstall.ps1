$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.79/Ferdium-6.0.0-nightly.79-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.79/Ferdium-6.0.0-nightly.79-ia32.msi'
  Checksum64 = '81aba40a0318c83a25b15b2b7cb5484c090b78fbb724d86683e74752e3af1ba4c53ee776b5f7be305b3e338ade4ce43c8b6adad0169c3e20a70e79ddce6097f6'
  Checksum = '81aba40a0318c83a25b15b2b7cb5484c090b78fbb724d86683e74752e3af1ba4c53ee776b5f7be305b3e338ade4ce43c8b6adad0169c3e20a70e79ddce6097f6'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
