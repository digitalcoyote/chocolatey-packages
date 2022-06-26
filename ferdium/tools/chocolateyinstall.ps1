$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.78/Ferdium-6.0.0-nightly.78-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.78/Ferdium-6.0.0-nightly.78-ia32.msi'
  Checksum64 = 'a589c4e1d29ae4dd5f1c68f6f9c210deeb9b31bf533a1b8544cda0ce188ad491100855a34d9c29869fc584999d13ef6e0baa6c8fb6150f9b6808172903fe704a'
  Checksum = 'a589c4e1d29ae4dd5f1c68f6f9c210deeb9b31bf533a1b8544cda0ce188ad491100855a34d9c29869fc584999d13ef6e0baa6c8fb6150f9b6808172903fe704a'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
