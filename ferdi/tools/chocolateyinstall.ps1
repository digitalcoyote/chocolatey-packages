$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.3/Ferdi-5.6.3.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.3/Ferdi-5.6.3-ia32.msi'
  Checksum64 = '8413468c8a4672f9617edb0be3bbbc1460dfd0d107a538042d109218b3231269af001b01779ff792a62753a21aaa7b74ee67682f16ca8eb6d1f5d2881f9466e3'
  Checksum = '9e78dce03a3e38c583fdc648a980f499f7375c4c80feb491077c096def5f9a0013a470ba9eb16241af5c9950e654a8b0cd6f717786620faa7f4545d55341f341'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
