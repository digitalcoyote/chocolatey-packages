$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.0.0/Ferdium-win-AutoSetup-7.0.0-x64.exe'
  Checksum = '0b2d3398ac3174705fb1a43322696786ef20c45e742ed51c6e05656bfb0a220a4ff30f0cbbe05b13cafdc57a3547605a44dba926acd73feb69cea1e7ea210dba'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
