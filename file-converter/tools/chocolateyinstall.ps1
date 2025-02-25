$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName    = $env:ChocolateyPackageName
    FileType       = 'msi'
    SilentArgs     = '/q'
    URL          = 'https://github.com/Tichau/FileConverter/releases/download/v2.1/FileConverter-2.1-x64-setup.msi'
    Checksum     = 'dd2a7c39e7408ab48c76346237104a7e429fa81b6dc6caccc81ae0c4fc14f4f69ee081316cfff4e6e2b281c584b4c906fe0f2bd4445271d8d5482d29e87cd727'
    ChecksumType = 'sha512'
}

Install-ChocolateyPackage @InstallArgs

