$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    SilentArgs     = '/q'
    URL          = 'https://github.com/Tichau/FileConverter/releases/download/v2.0/FileConverter-2.0-x64-setup.msi'
    Checksum     = 'd934f9adc34e8dbebc538e84d9958aa8dc6635f2a2601ffc974a3394a31134e4bdd169bf7296d12dacb1cebc7fe058ad7611c4be9a0827924f09b65f37f418d2'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

