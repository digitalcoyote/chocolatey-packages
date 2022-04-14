$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.1.0/buildifier-windows-amd64.exe'
    Checksum64 = '83ae999b96c95089da5a3b8e31923bf2d31f1d829d8815f4bd7819ca0fb2a165eca661ea82845bdd8d83c075e9f7156a08defe54f478f993192061079795cd56'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
