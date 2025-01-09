$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.0.0/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = 'c449632915cadc46b85f3b2261000541f693ed5859c174b975a0c693d1755cbb8a3e3092891603c1cc70cb66042ee5e05508a8163f290eeeffde9dca124e127c'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
