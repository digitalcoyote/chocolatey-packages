$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.73/nethermind-windows-amd64-1.10.73-b8ab965-20210615.zip'
    CheckSum64 = '06934034dc5334379848130804bdffde65d885c47cf369aeb333d687e65dd9256166e44b05b00cef8a249fcf7512e7ce8b7d82022582138031396988889e02e0'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
