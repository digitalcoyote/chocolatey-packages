$ErrorActionPreference = 'Stop';

$args = @{
  PackageName = $env:ChocolateyPackageName
  FileType = 'exe'
  SilentArgs = '/S'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.0/Ferdi-Setup-5.6.0.exe'
  Checksum64 = 'bcceb50a42e0ea3aefe2b10fdfe6eb336eb1d0bb6868386017928d52e73dd3ebd2ee7aa36c215f1cd40b0c219adb5a5d5821d483af54d0e36e44e9b9f7757add'
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @args
