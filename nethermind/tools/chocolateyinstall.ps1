$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.1/nethermind-windows-amd64-1.12.1-563f0a3-20211130.zip'
    CheckSum64 = 'f209b7ba53b37c5198b96c86633861cd8c5f46da4c41559971375d6c59c4ebdf121fccc8309e0666e3c1e30ffdea44254807e8a234d46a2b4a11c67e3dbbc00a'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
