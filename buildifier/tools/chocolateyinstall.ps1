$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/v8.2.1/buildifier-windows-amd64.exe'
    Checksum64 = '43e863051db7ab6204f563ae42f575c8da97a076503460c8ad5dda8be0b2abe73275bd171088f4340e2a8bfad9808213bb4e0cda562c2901ac123e19d07719b9'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
