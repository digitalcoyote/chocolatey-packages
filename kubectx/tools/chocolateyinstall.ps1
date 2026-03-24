$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.10.2/kubectx_v0.10.2_windows_x86_64.zip'
    CheckSum64 = '9a55bde87e60b5b11c5d4017b5cde67b53b0540eabd0cf093ef0322f3eb850f4a13fe8e2a822a09a41ec4a5292e6a043e8c798caec233ea09ea6a77498c41ca7'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
