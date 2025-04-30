$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.0/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '9bd792db68787b8cac35a02dab0bed18b1e10972f145cd60bbb3b0577b9da99b28b47e4920e14d25a8de75f3be464f929352f20cbd29b55009bc9f2178bc5be1'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
