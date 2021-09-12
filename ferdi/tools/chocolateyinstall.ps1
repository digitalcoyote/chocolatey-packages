$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/S'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.1/Ferdi-5.6.1.exe'
  Checksum64 = '3781ae56da5cd69f6255d18fba97dcd4343bdcca26e0d503bb3d6696ac9fc113fb2d96feca506514a06249db19a5ec42de72b3ea554841ecedf77cfff339eda8'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
