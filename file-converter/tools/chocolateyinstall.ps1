$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    SilentArgs     = '/q'
    URL          = 'https://github.com/Tichau/FileConverter/releases/download/v2.0.2/FileConverter-2.0.2-x64-setup.msi'
    Checksum     = 'bfc1244dc950bd6ce431408d1101e30c5b2a36886890f2ee1c8ed7be1cdde29ed7b448165cdde3e70ebbee3388adc3c1961d48b3713d5166546b550c95a82b7c'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

