$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL = ''
    URL32 = ''
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Checksum = ''
    Checksum32 = ''
    ChecksumType = 'sha512'
    ChecksumType32 = 'sha512'
}



Install-ChocolateyZipPackage @InstallArgs
