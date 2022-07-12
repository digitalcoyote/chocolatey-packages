$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.98/Ferdium-win-AutoSetup-6.0.0-nightly.98.exe'
  Checksum = '0da43dbc0ef7763f8f27110e2010c067d7ca05d20ede8c20a97dfd32903fd57e35bf8798faa6d9cb2bded08ee2201b9cf431fc578103588ef8bb37ef1d3d0483'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
