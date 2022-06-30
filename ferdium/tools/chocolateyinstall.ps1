$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.81/Ferdium-6.0.0-nightly.81.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.81/Ferdium-6.0.0-nightly.81-ia32.msi'
  Checksum64 = '781844be4ea5e8b16fc5a0cb58b78d77c0baf002321b08cb3daa4733f788e96215a5e64eb9832a9e6bc17c902a0976faa30cd6b4d89ace96d8056f4e1debf353'
  Checksum = 'a563b358324575f81d3ee4f0d44e0d30440c500f9d1e39eb3750779e8c1cd430e75c05d60202d21d465d4269548ee959d59f8d9cd6795fe3daf5d412afe5a80f'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
