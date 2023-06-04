$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.3.0/Ferdium-win-AutoSetup-6.3.0.exe'
  Checksum = '0097275dd5b7b6f0a821e98047c2ddd011b6bda3a9cf285cc0b3c2ff7e2aa3ad2a994140b9a4abcb26276b14e4426c96622551a6c20c8db2d56127eb5723c69a'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
