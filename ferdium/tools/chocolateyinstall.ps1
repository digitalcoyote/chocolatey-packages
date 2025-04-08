$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.0.1/Ferdium-win-AutoSetup-7.0.1-x64.exe'
  Checksum = '88843a0195238f9c58a0d139534b862225d0122305ad903b05bf8a5bc6af1a449e876746a88d35825b80888eb0f0a6209e816e8935fe3328e4cda644ab6d1dcb'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
