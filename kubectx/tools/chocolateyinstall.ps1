$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.10.0/kubectx_v0.10.0_windows_x86_64.zip'
    CheckSum64 = 'd2db1aa37148cc28774277a46025fb3c0b719a3eb5ab78c143d13cf9dc4fc86cf10903d374a8420ab2e605fcd74deb9cb6e483cb766736045111e249fa6563f1'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
