$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.9/Ferdi-5.6.9.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.9/Ferdi-5.6.9-ia32.msi'
  Checksum64 = '73c750314960f6b4a0469f0a926d382657665905ceede6d3cf7a0ad5c9939ef2d7b5b84d4d8a1c06009c194be39960205e9006149433a506556500504edc4013'
  Checksum = '4906467ded1d8c152dc1aff518bfe82222a76cd40bb85044f3d479ea9656bd7395a70e885315d139be590fee862e64798850c873393192a5c64aaa0995750ccb'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
