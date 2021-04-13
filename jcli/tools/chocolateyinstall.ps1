$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.37/jcli-windows-amd64.zip'
    CheckSum64 = '7728263a83ffc684b87a3f1c6661742d71dae08f25a94038a13a65aefb9c0de0f93fc098f750c68b37da6b094697358ddf1cee595ba955a5f6e4021ba76ca4d6'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
