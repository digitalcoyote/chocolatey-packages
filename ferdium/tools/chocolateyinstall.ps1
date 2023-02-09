$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.5-beta.1/Ferdium-win-AutoSetup-6.2.5-beta.1.exe'
  Checksum = '5ae99c6c165d35bd6f079bf47021b61d84319332e9d65521977510d12fe209ecdfad54cdbf8c024382c48bcaedeb4139a92bc24ebba2bf68bc454f43e060d83a'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
