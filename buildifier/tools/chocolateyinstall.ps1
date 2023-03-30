$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.1.0/buildifier-windows-amd64.exe'
    Checksum64 = '472ef6443b2f64d214f9caee351952ccc0bd82d9ab5d30afef4738d100d2dd39ed450e02f62ddec560105800c7db1123bbf246984279c40b7ce1525f996d0bf6'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
