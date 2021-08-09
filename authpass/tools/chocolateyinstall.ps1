$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.9.1/AuthPass-setup-1.9.1_1813.exe'
  Checksum64 = 'e29d338d50ade5cfe02e911d11fcb735725cf65290ffccde48e109527d63e9e815a5ef2771b9db5cd3b10e845b8964c99c668f688a04b7d8cb1e321c7ed2cb4e'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
