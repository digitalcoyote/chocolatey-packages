$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.3/nethermind-windows-amd64-1.11.3-fe90423-20210922.zip'
    CheckSum64 = 'a3f932577f937cc62d78987fccd5f8a81ad3c163812fb31ae42939695cd942e6c486fb082213b4e7cf01b23d911a27f3e713d0bbc1ddaae1a03489b2750ca115'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
