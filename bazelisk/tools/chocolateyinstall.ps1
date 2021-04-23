$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'bazelisk.exe'
    URL64 = 'https://github.com/bazelbuild/bazelisk/releases/download/v1.8.0/bazelisk-windows-amd64.exe'
    Checksum64 = '83d6e6614c22dc736176ffde26116bdd15ab158e82fd6cd3b30811f4c98163f6754c1be322b3bcf2b4848d5b1940c35c95eb668cf0a12e7291add8ae361accae'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
