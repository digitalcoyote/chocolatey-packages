$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = 'https://github.com/swiszczoo/winpinator/releases/download/v0.1.2/winpinator_setup_0.1.2_x86.exe'
  url64          = 'https://github.com/swiszczoo/winpinator/releases/download/v0.1.2/winpinator_setup_0.1.2_x64.exe'
  checksum32      = ''
  checksum64      = 'db19319a39bc8b038455c87a578c04624ff1103cac489f33b2305637557c54df6a50bf9e91288df47a3f4c90208d44a0c6bb23a46cb67475ba34789a08c8b197'
  checksumType  = 'sha512'
  checksumType64  = 'sha512'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

#Create .ignore files so chocolatey does not shim the Exe
$files = get-childitem $toolsDir -include *.exe -recurse
foreach ($file in $files) {
  New-Item "$file.ignore" -type file -force | Out-Null
}
