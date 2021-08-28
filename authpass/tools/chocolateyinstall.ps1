$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.3/AuthPass-setup-1.9.3_1848.exe'
  Checksum64 = '612c94c387b5cdeb9e5f0aa01cf28391054285f2b6cc40854a22deff9988d1bf9d838c8dbca38cb75d484e7b8124f5eea358cab19e2a63832992dfb7635a587c'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
