$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.3/Ferdium-win-AutoSetup-6.7.3-x64.exe'
  Checksum = 'a0ae79a417c5df93032ef49f03d97ae09b566dfcad657c669ad0ae20bebba788a46f6b799e2b7a85ba2237b25d9c845441cf1df42ae9c2dec1dbfcb216edbcbf'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
