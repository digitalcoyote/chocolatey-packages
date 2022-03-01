$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.8.0/Ferdi-5.8.0.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.8.0/Ferdi-5.8.0-ia32.msi'
  Checksum64 = '653f1b365bdf4cb60de03bff4300b3766481cf5628e7cbb8bc5b4b9d16dc87636c5609227dc1cf17eef175604935f2a5d59dc866d0edf183a34bda1b9ff64feb'
  Checksum = 'ac5e34f955f0b74e55c45a916b942aaa3953ffbe82f5371aab4a06ce91623cca73cf019c22a50ab463e79bb67d1c8f15cfcee3e2a6c3fdc9bd13b2afcd0943d7'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
