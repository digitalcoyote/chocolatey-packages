$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/getferdi/ferdi/releases/download/v5.6.6/Ferdi-5.6.6.msi'
  Url = 'https://github.com/getferdi/ferdi/releases/download/v5.6.6/Ferdi-5.6.6-ia32.msi'
  Checksum64 = 'f4806d07c2fd946ded8548511844d632bfa75b8772a30e0a0ead6ea9c1f5d362b18626c56436aa9e5a1750126b82737ac6408dbfeaaf4f2bbbb25c44daf651e5'
  Checksum = 'c43b27bf73a44943a77c71f157b7604be038581c5e922b8d51f410a1b9ed34df62a553ffedc393daf87ee13f748a7c322b696286fef5a205a18d29987149e87c'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
