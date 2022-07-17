$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.101/Ferdium-win-AutoSetup-6.0.0-nightly.101.exe'
  Checksum = '05adb70b259cf2f806c8599c5fac46150dbc00ba3a3823c08de0c7f0f84b1f9a21148bcbc417bbe60f31eaa4de50ad7dfe277d2164e84efd35ad2880bf5bf073'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
