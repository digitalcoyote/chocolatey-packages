$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.1-nightly.3/Ferdium-win-AutoSetup-6.0.1-nightly.3.exe'
  Checksum = '647b8f2ad051a871cc6b240214a6353d9b83c79780d42878fa3970b96b94dc994e4f8a45f43c1c711a043e8bb8b1f4871c94f41229fe983ddcfc6e0c404a896f'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
