$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.1.1/Ferdium-win-AutoSetup-7.1.1-x64.exe'
  Checksum = '9272e969879992d97f0bb7f0e3a8c02126cf0b55636215587ab04b923c59566ae6392cca53b952bda120a442cd76c7fab5a68d86cb58561dd15d2ddf598c9b60'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
