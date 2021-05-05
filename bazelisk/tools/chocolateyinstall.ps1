$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.8.1/bazelisk-windows-amd64.exe'
    Checksum64 = 'ff16a83e9889bcee8873e1b35a8305b11968e2812e2c990738c4ca78b42b8f011383d71c3b1de05e590c369c2a1215b7af59ed8162d4cd3fe482069671e88b29'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
