$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/ahmetb/kubectx/releases/download/v0.11.0/kubens_v0.11.0_windows_x86_64.zip'
    CheckSum64 = 'e601917235ff1cb2215872ab34952e4c85b3849177b0877f0d7276807ac7063bfcbc3886d3f5de8532c7a0968e1c7a27de6757f75f67b66c8ac82e45aae6f4ab'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
