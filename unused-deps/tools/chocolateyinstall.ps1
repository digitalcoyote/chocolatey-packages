$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v7.1.0/unused_deps-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'unused_deps.exe'
    Checksum64 = '70792eacc8098b11deacfab37a2325ca90bea0542fec992251b427489e4d1964bcf23636588a73a66e157b032dcd7af19dbb10e78f1d81a832d8173cddad3ebb'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
