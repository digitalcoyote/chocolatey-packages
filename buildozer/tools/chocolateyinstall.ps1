$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/6.1.0/buildozer-windows-amd64.exe'
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildozer.exe'
    Checksum64 = '956e5a8fa03b622881e8da37b4afa158c528de5bd81705c57394b0b819812c8799ee6426d49b0fd8dbd264c9cb8b3540f520a77377acfe413a43406d350ee645'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
