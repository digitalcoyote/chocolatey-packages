$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.4/Ferdium-win-AutoSetup-6.2.4.exe'
  Checksum = 'f8e1fe9fc70fb3665fad9f8b1c178741f1750cadb41891fdc94f180d1ce78740ef8cd0ece33cb200e621679b8591098d7f22b4e19eb1924fdee1cbbd3e070869'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
