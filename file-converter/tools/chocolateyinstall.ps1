$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    SilentArgs     = '/q'
    URL          = 'https://github.com/Tichau/FileConverter/releases/download/v2.0.1/FileConverter-2.0.1-x64-setup.msi'
    Checksum     = '0a3f60b2471b5ad7c47b10c679e4ffdf1cc8ed941d9d42baf75cecc912c259e0587611cd90442d0d9cc9576c2b2b1cbd52106e10b39cb833f397dd7128ae9de8'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

