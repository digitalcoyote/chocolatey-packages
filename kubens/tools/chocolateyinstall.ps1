$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.10.0/kubens_v0.10.0_windows_x86_64.zip'
    CheckSum64 = '117b81e55231c2c0292d70924c76ba9dda43600f676d479f056130c0b66d4fb58fe7f73e0d8c45ee5a6567a681e7db2dd7b706a05aa8cea144f809a645e536c4'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
