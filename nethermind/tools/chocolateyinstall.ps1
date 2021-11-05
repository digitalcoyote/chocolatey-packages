$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.7/nethermind-windows-amd64-1.11.7-75f034a-20211105.zip'
    CheckSum64 = '5ed87756f7b858c5684bb7890c387e3caa66c3823db4a0c1b5ed88d66e065753e4f671b1d58fc4e77e859325473056a0e5be5c96ad1e71020accdcb9676da9c5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
