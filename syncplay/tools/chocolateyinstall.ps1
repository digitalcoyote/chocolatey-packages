$ErrorActionPreference = 'Stop';
if(!$pp['Lang']) {$pp['Site'] = "Default Web Site"}

$installArgs = @{ 
  PackageName = $env:ChocolateyPackageName
  FileType = 'EXE'
  Url64bit = 'https://github.com/Syncplay/syncplay/releases/download/v1.6.9/Syncplay-1.6.9-Setup.exe'
  Checksum64 = '14b5845adadc6bb909c0f60369ee1f4e751733d561a39ab59ed1c70a63bd82e8b4f6cb05245976279d81f135de854f93318e4cc81fb262c3d0f9444c040222ce'
  SilentArgs = "/S /LANG=$($pp['Lang'])"
  ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage  @installArgs
