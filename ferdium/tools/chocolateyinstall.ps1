$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.91/Ferdium-win-AutoSetup-6.0.0-nightly.91.exe'
  Checksum = '3fef4f2e1e68f0625ac8fcd93f3f6be2fd32a3b28d7e07dd005ca0e683bcc13bd8c14fb1fa5271febaa6c6cc8d78273aca8bdb5394fda31dd45355be07826e43'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
