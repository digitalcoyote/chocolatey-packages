$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.39/jcli-windows-amd64.zip'
    CheckSum64 = 'e3161e180099bc9c9f405bd2834852571328a3031f7094f8727233ab7620a2dd7638548622ab02c93307ef9b5c9ffab12dbac64d60ae3f5fb973aa3dea14aad9'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
