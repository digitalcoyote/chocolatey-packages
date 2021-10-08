$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.4/nethermind-windows-amd64-1.11.4-f787085-20211007.zip'
    CheckSum64 = 'd39d61f3112a01469478b12c37eced424d78bbbcb1e155a5f49c358b15b478a50bc6ad2750d11ef85d1dec125874dd0596d7e09d5013f72601e33559a90b30d5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
