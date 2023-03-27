$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.6-beta.1/Ferdium-win-AutoSetup-6.2.6-beta.1.exe'
  Checksum = 'd33d71fa2aa32b93f048efa459fafb1cef07a0971b5c79a5547e48c1112955cf77e376fa41b5f4245839180d0b2a29c8f5ab2a3c8eec384515151dc4f7b28f9d'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
