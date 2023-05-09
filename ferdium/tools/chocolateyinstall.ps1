$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.2.7/Ferdium-win-AutoSetup-6.2.7.exe'
  Checksum = 'c90efbed99f471d4242c9e1646df7f21cc55baf313e10e15e956f2db4e7ac59ae1aa85cb13d8e8f7d2af1b0a2e8575c5fb23bd7435c00d2011d8b0065da4c241'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
