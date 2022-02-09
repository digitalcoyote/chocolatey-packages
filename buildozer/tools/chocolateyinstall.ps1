$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.0.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = 'd47b6b8a3e8e800f52a55da93ba66e2c4fe31fe08d9e97692e746a7bc66c864d5c204e31df18ae24afeeabe4b26406d1ffdd272f1d0d0ded993b8d306306a3c7'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
