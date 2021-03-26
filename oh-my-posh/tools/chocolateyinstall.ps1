$ErrorActionPreference = 'Stop';

$InstallArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v3.122.0/install.exe'
  Checksum64 = '49e1e0165339c59c3c36cfe1d961f2787ee04d50c41cd44c7ba161f2fa009187332cf943fd685c3ecae1e5862d5cbe6a5cfb278673efb5d03cdd71a3f25a724c'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @InstallArgs
