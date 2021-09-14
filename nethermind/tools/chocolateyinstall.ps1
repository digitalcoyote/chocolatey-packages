$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.2/nethermind-windows-amd64-1.11.2-2963427-20210914.zip'
    CheckSum64 = '57c65a458d438e664b2043446a2c7351eb2f6b1be4a6d241f8e1a633402d7854d831ef6ee472e268a3a921bc5e8f24ab7c2fec4e0722598563b09764f376db85'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
