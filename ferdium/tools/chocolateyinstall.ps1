$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.1-beta.2/Ferdium-win-AutoSetup-6.2.1-beta.2.exe'
  Checksum = 'c762a4bfb074f907eeab8555f38a30d5c5b3e0057803a1652ec71f0645cb14eb2e22bef94c256e9e516cb80e27310a6799322c63a165c916b00bb09f25cd51f2'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
