$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.5/Ferdium-win-AutoSetup-6.7.5-x64.exe'
  Checksum = 'b6b075291c945191ddfeee55a9412c880a4c2db2a043985f2a28bc5e67880caef279886090df5adcbf88414fced46b069f46577764906a38c0c4fa0e559180ae'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
