$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.6/nethermind-windows-amd64-1.12.6-fb2a395-20220317.zip'
    CheckSum64 = 'ac71824ca7ba6b50987d820394c992a28f8a21a41b0be2a9b6b56e962133a47b5a9705368394030f507040e15f38803ae6d99d570f5dc46d54c4eca7678032a4'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
