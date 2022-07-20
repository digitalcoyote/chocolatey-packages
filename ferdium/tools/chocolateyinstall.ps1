$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.103/Ferdium-win-AutoSetup-6.0.0-nightly.103.exe'
  Checksum = '28a644a588584be68226118a0d58641c92186d927535ac7b59d556a390026d50c36795fcc473b6bca29ec14690bc96c6cea90a969200efe9667825c55752f8fb'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
