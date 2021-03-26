$ErrorActionPreference = 'Stop';

$InstallArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.123.0/install.exe'
  Checksum64 = 'aea2bf11cb4a8312d681de8181d147f52fd9a8a3a4c8a815109dda78092bd3069e234351b773c11660b164e3fb83b8849151de341fa04edd20e540b314b15c12'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs
