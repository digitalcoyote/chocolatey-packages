$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.1.0/Ferdium-win-AutoSetup-7.1.0-x64.exe'
  Checksum = '6b638429a13c45d36c34a7078abcaef73f260f5c7e4c34d32e0151377d1a09e0e4e8b3cd6116dbe2f96b08352ca18a7f44e1fb639d69b18ee039d3a13d2423ce'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
