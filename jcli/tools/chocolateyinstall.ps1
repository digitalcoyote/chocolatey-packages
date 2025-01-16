$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.47/jcli-windows-amd64.zip'
    CheckSum64 = '52366b95dee1dcb6287163c2769954ca6fb93f86785a464e8ee70f3fbc1f3fb6acdce78aab9e1486dc07468ceb8c4514c74e98e20a85b85b7b4ff58ae2483deb'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
