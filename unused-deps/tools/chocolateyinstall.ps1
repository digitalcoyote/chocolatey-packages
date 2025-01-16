$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.1/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '05e46e326b0b2ab6a75af6f5c66873e9906da3cbe467d53fe7c888016bf479d4637750a4103963808a9dc891f34a2a79d5b0eb72e65b95ba87c63cc64e127c26'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
