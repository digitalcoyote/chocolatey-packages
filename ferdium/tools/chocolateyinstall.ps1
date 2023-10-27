$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.6.0/Ferdium-win-AutoSetup-6.6.0.exe'
  Checksum = '83ac17282dfb47ed05c9c80c0395e8bd989aca4c826b2998eb99c63a6b0423feb3324c22e1b48f31311eb1621734d3b6089166d83ff2f1cd6fa69c2776a5d80a'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
