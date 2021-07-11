$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/VERYSILENT'
  Url64bit = 'https://github.com/authpass/authpass/releases/download/v1.8.0/AuthPass-setup-1.8.0_1710.exe'
  Checksum64 = '3e0387c6f2215637956141772de1b0486c7d9457f808193bfc28ead99ae411a457127c66cc84182dba1e7ef17df026f6f62f0cddc87b03b6f18f669f6bc300db'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
