$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.1.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '8ff24a67d7dc54e88a4e1f4e99c70168d6eca973cbd7244f7332d7175aa6154e0e4eed375b802f8a58268d42d764b9774dca587f6e03ff965d245d15d0c39326'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
