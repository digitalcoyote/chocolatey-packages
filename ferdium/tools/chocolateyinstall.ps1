$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.5.0/Ferdium-win-AutoSetup-6.5.0.exe'
  Checksum = '08c85c70e4f18bd25cbe169101c46ccadcc5e5c60bf9a2deb843bb8d3f42c4029bda71ba561af1f1742d20db329b351a53ed12bdd49bedc57ebc4e99e2bf4e2e'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
