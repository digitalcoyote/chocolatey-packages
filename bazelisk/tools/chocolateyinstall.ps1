$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.9.0/bazelisk-windows-amd64.exe'
    Checksum64 = '8a90596d6a70b5dc620d9827fb0394c72802b6ba6c06d7de97f8555b48dc77ee961a7640f87e70a162e4203a2f07061a6b0beb024d5fa4701ce85965edbe449e'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
