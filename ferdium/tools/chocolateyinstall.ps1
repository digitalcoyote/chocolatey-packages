$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.7/Ferdium-win-AutoSetup-6.7.7-x64.exe'
  Checksum = '089515708c3a9328b6a686f76fd7723767ee73f726efffa824567c55dd47baf2f42a02ef554035bce198d4460b337b4e00f2210283dab1ce528d61fb29a18314'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
