$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.42/jcli-windows-amd64.zip'
    CheckSum64 = 'caf6831fa60327172fe0483eb130f9c4a82e111cf26e3a39d818f4253865e813110fc4dfe7d27ede6e0183836f07f4fe9c4b13a1f338bde06a18fbc6b8ed0f6a'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
