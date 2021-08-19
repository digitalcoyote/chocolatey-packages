$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/4.0.1/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '8a508504143b466c107a87d278cbd0f881e24bbe11e3631fb9cdb6454973114dc1aa35132129fb0aef3c1d2b6d07b6c23cae15bde8539cccfaed91bea9c94a40'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
