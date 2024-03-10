$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.7.1/Ferdium-win-AutoSetup-6.7.1-x64.exe'
  Checksum = 'd8224a3264e07afbb30957f384189b04cf1e28af62539c145437cf98856fb1427358925ec889760c6b696b3f2baf345244af18bb91619eba0a329bc8ad4268a7'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
