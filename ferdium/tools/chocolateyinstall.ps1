$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.5-beta.2/Ferdium-win-AutoSetup-6.2.5-beta.2.exe'
  Checksum = 'dacb489086463aaef6d3e71943b9b5356ba9ea377b2e44f60fd2b65b5fdd1f3b99a07ab332c79c13222f777bbcd3802cfc53ad2276ae6cd528f32fc74658c096'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
