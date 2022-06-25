$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.77/Ferdium-6.0.0-nightly.77-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.77/Ferdium-6.0.0-nightly.77-ia32.msi'
  Checksum64 = '134bcb25c32aa07e157e53f82fe3e4ff8ce9f127590d7471d748a44ef9eca49dd2f04e7732f44126da6a9ed3ac4bc5ddac575bd434a2dbed352785aadc50b6a2'
  Checksum = '134bcb25c32aa07e157e53f82fe3e4ff8ce9f127590d7471d748a44ef9eca49dd2f04e7732f44126da6a9ed3ac4bc5ddac575bd434a2dbed352785aadc50b6a2'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
