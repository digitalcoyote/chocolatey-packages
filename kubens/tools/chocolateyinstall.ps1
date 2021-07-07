$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.9.4/kubens_v0.9.4_windows_x86_64.zip'
    CheckSum64 = '4be4d3b157c6c07e6fb77ac0ab4c8cafe9c92f99104c0406c554bf205f4378a98d184197c27b43e3ef1c33fd5b368effd53ac9ed6a4b8134925af5040e6cde52'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
