$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'msi'
    SilentArgs = '/qn'
    URL = ''
    Checksum = ''
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

