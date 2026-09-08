$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.2.3/Ferdium-win-AutoSetup-7.2.3-x64.exe'
  Checksum = '15ecd8fd3bda1ec3aba605a3940efad871171bde3177d856702c07a6077aa62a48da68f3d445964ff7fc63993bc5a0aa5164fc27a64ec7d4a64cd35a51056e1e'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
