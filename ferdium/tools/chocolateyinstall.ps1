$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v7.1.2/Ferdium-win-AutoSetup-7.1.2-x64.exe'
  Checksum = 'b831c1a9637f471d2c0f058eae4a89beaa8c34cfe07b1eb3f9d1eb703bdc70236bcac2ff1768d784597961707bebb9a280e75bd9fc9b620022bafeee61f3c834'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
