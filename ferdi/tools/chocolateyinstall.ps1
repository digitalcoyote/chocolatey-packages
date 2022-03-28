$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.8.1/Ferdi-5.8.1.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.8.1/Ferdi-5.8.1-ia32.msi'
  Checksum64 = '4d16a132e2f0700f8942465aacdc90761032bf508a1faa61f44aa1732b37bd6488ab1c2abf2acc3fde34d82fb035916bf25fb52e0821ffa3ca426da7ee265f86'
  Checksum = '9b1992b4de82ab07d4a131e2eaae5e7f9a4c6d26d7e176aaf7c46531028b558feab02432fdad1361cbbd96c6f35d3106d56124e60d515e19a90ed3e46ac0148e'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
