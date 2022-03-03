$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.5/nethermind-windows-amd64-1.12.5-84e7028-20220302.zip'
    CheckSum64 = '42712d6c295a9841a2e5583aec2fe091ca6447c54975de6489545a3304c0fea4625e538232a460353cf521ef6522032c5e3ae44718f154418e54c6419dcaf7fd'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
