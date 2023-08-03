$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.4.1-beta.1/Ferdium-win-AutoSetup-6.4.1-beta.1.exe'
  Checksum = '52d8b1d733108fc3af72d42bc8027264463147cd4d246395c1b051b2354606302d27f29114deabdc64e8c9a23ae30f772d989814090dd14285e34f3542074c53'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
