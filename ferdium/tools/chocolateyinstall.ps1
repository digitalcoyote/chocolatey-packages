$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.2/Ferdium-win-AutoSetup-6.7.2-x64.exe'
  Checksum = '888642175481ced85a0b656983b179ffd9a3efd8e12bb8ddc916e6c8a3cc4b3838f6f861e41a6caa8850524d62ce754dee3d89dda2fa2615fc240e29b81b9402'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
