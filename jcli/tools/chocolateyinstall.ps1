$ErrorActionPreference = 'Stop';

$UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)


$ChocolateyInstallZipArguments = @{
    PackageName = $env:ChocolateyPackageName
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/jenkins-zh/jenkins-cli/releases/download/v0.0.43/jcli-windows-amd64.zip'
    CheckSum64 = '51631ff8388a773660d0faea4c7d776ce2237847e5345a6271c445e7d6b94fff09f3ffe5e0b601dd5708711f5bd5aa0bc6245a166aae83ba01db568421ada26c'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ChocolateyInstallZipArguments
