$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.74/Ferdium-6.0.0-nightly.74-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.74/Ferdium-6.0.0-nightly.74-ia32.msi'
  Checksum64 = '1ba983ec4d4ef83d8bf8ac4cd19ce7931c43fa4d358df5c4b133cf3f7d73137f9b9efcbd0b1b991a9907b918f7d28ae86cf3d9b2eec326d0e2b50cfaa4210676'
  Checksum = '1ba983ec4d4ef83d8bf8ac4cd19ce7931c43fa4d358df5c4b133cf3f7d73137f9b9efcbd0b1b991a9907b918f7d28ae86cf3d9b2eec326d0e2b50cfaa4210676'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
