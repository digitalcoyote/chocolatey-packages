$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/ALLUSERS /S'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.1.0/Ferdium-win-AutoSetup-6.1.0.exe'
  Checksum = '01c148ab447015b1aef77dcf7785ec1c9964093725388d941e395aecef8c936b97b809be90b3a446dc6d38091b04f20e92a8dbe0ecbb4e3593fc96d1137781ce'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
