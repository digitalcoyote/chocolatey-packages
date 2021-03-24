$ErrorActionPreference = 'Stop';

$InstallArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.120.1/install.exe'
  Checksum64 = '8f49e5635970244979940ddfe007bfe3fff3cb011f1618c4575b88930ebc4c517390aaad17bab37a6c55983e7a8a00476d4c8429b043e8ce00fa4eb75a19f9b7'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs
