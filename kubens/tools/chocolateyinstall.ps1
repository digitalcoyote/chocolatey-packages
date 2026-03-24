$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.10.2/kubens_v0.10.2_windows_x86_64.zip'
    CheckSum64 = 'd85418c5a9a1a103f8f5e11d5e51689eef89b1214d91a65179313be4d3d11a788fb8d028b5f8de0b21b6ccd6585b32b4994ae250cdaa829624d55b2418678b35'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
