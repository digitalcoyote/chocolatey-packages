$ErrorActionPreference = 'Stop';

$InstallArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.122.1/install.exe'
  Checksum64 = 'b092cf5af905d83f1e0ffcf6bd6128e833c9dfb0d4b6b9ae22f70870cd27280a6eaa487a8db6808832d3e0a6b04a865d3039707c73701e59df0310ea6e29b962'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs
