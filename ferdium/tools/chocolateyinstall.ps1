$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.100/Ferdium-win-AutoSetup-6.0.0-nightly.100.exe'
  Checksum = '5693fc8caa42dd974361959263b901be7c75d9a60e630c0cfdc3fda623c09ac8647a9e5efd680d4c237246d4d9db6af08cfd4c88b2f9bceeb2f0da52442c7815'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
