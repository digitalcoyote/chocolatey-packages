$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.11/AuthPass-setup-1.9.11_2007.exe'
  Checksum64 = 'f9d5c143bee5a055e58d00fd7a259f3b97905be15856ffdb944a301679bde3a73027346758ae1cf444bd5fefb8f7f3da5bb5edd10aa04b0485764f908dd70f1a'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
