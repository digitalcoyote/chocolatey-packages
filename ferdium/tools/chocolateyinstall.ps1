$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.93/Ferdium-win-AutoSetup-6.0.0-nightly.93.exe'
  Checksum = '40039888507ec0a7293412985f8c815a16beffb5885dfb5f04393869be4b1b607c98e520c1ab3a08789a77be28e4b86c2082954a5b3ae7b0652062500d5eecf7'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
