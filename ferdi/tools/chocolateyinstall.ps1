$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.4/Ferdi-5.6.4.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.4/Ferdi-5.6.4-ia32.msi'
  Checksum64 = 'dde97f4abcb19c3db67b9d02724427a9125a8ffe1114d57c89536df5c306d646bd3c5689ee80f3a38eccefcb3a67f82c07d98658e4161a30b9055a2bbe747bce'
  Checksum = 'af13a03770334304f8d45b7dafb19a76ea48b2fb71014ca574c8f2d8bb8e3b41c6437ab2590b842ddf52f07beddb08def154f2423abdb7f14dd39c5d1d0dff20'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
