$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.5/Ferdi-5.6.5.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.5/Ferdi-5.6.5-ia32.msi'
  Checksum64 = '17181b6afc31e42bf58a4e9dc42a779adfcdcd827c380b1a250cacfac63e6fd67eef2c115dd8ecfc634434d6ffc211da4202305dad1dee54be978fc4b67591b1'
  Checksum = 'd493a4d98c2319fc036d7f3f24b0e5cd13cef5a11c347c1ded8e4c056cf0f2043dec29b88bbac6b246f365ba48fb284e5a21e5e1e141fb68f8272fbf76dfd0d2'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
