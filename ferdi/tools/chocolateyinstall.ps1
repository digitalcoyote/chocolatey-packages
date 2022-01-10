$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.10/Ferdi-5.6.10.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.10/Ferdi-5.6.10-ia32.msi'
  Checksum64 = 'ffe1ea8e3fa12fe2d735a18dcaf98e42396daadf8e0c73d2563b9d55dc5cd3075d9cc1578db421bfc58cc2e0daeed6467fca07dfcaff0328c058f900a602390b'
  Checksum = '7faac0da79b69b17e063d16132c16c29435d0e07064d21eb01c44a9062637854bf3342ccec59a2f622f5858d9834167cc318d9523b5fdd1eec2de7bcbb04445f'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
