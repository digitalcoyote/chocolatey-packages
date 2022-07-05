$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.88/Ferdium-win-AutoSetup-6.0.0-nightly.88.exe'
  Checksum = '211abacd86a243b7b63056fdcdf8cbb63613a8c4f7c2cf6c4b628bb43d4a69872eb766ad9748bccfa2b96f029f592f6481399f0588bbe13b85b8cf3b5b44b3a4'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
