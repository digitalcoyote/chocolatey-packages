$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.11.0/kubectx_v0.11.0_windows_x86_64.zip'
    CheckSum64 = 'a820d63342bcd275423680ff31e4b07270eb4be488e50b0e771431c944e8f7d16045933f6e8cfb4327c73d1436f6ed32fe15b6f4cf0510c637bf752ae4094e72'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
