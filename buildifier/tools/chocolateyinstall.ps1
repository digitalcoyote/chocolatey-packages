$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'buildifier.exe'
    URL64 = 'https://github.com/bazelbuild/buildtools/releases/download/5.0.0/buildifier-windows-amd64.exe'
    Checksum64 = 'd0d12975139e3747eaf16636bfa795486f8065550a040afea518dbdd30a3b3963246c4dba058f13efb1ab8cc498192ae96c75f90a6875e216cded9eeac8dfcd6'
    ChecksumType64 = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
