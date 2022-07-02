$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.85/Ferdium-win-installer-6.0.0-nightly.85-x64.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.85/Ferdium-win-installer-6.0.0-nightly.85-ia32.msi'
  Checksum64 = '2d47aee141f5418b67afa0d479fff39f4316eeea10ea7b70fd2ed2d75371b8739090f06cd3902ac2ae979dc71c00e369390f8081d126b9ad663f1ae6da7ac69f'
  Checksum = '17c3f3353b333f2bec7746c8e681adbf79c7a879c804e1548c73f1859226d745c3e5558ce907385520bb565407c54110db771b0969088f05365df3b8dc33511b'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
