$ErrorActionPreference = 'Stop';

$args = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'msi'
  SilentArgs = '/qn'
  Url64bit = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.80/Ferdium-6.0.0-nightly.80-ia32.msi'
  Url = 'https://github.com/ferdium/ferdium-app/releases/download/v6.0.0-nightly.80/Ferdium-6.0.0-nightly.80-ia32.msi'
  Checksum64 = '2543734f94c4d40e793dfea24f006b428b31e2e05ecbb91aef25cbe42eab2eb39d6fc244e8d2feffcc0ab81d8a472155ac5146a958ae60554ee6f7c489bdb840'
  Checksum = '2543734f94c4d40e793dfea24f006b428b31e2e05ecbb91aef25cbe42eab2eb39d6fc244e8d2feffcc0ab81d8a472155ac5146a958ae60554ee6f7c489bdb840'
  ChecksumType64 = 'sha512'
  ChecksumType = 'sha512'
}

Install-ChocolateyPackage  @args
