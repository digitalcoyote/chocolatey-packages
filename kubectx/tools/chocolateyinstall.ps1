$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.9.4/kubectx_v0.9.4_windows_x86_64.zip'
    CheckSum64 = '9a1591873227127ee31dc5591710afef41c8299d8b4e47816eeec27e5f1c18e8a249b8eabdd208e1dbaa46b170fe448dcef0d4698ff4560c59f9730b90054821'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
