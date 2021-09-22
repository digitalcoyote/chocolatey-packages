$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.38/jcli-windows-amd64.zip'
    CheckSum64 = 'a8ab2bd5af227db7bd55ac7ecd751b0c9c22ee9221bbd48624e111b0920ca669c59b5d6a2eb2168d231319beed1aa75f65b63946889b763d6a0dbab30fb6188e'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
