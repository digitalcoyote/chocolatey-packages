$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.36/jcli-windows-amd64.zip'
    CheckSum64 = 'f86308f5ea56c229bba7b9491dee6919116d67100a3c925d539f63879e17323dd8f46089317987628e7b93cb9f87d3493f5702bd6ce55a01361db23ebf368cbe'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
