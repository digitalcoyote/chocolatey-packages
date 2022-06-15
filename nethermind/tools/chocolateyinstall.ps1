$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.13.3/nethermind-windows-amd64-1.13.3-0e3289f-20220615.zip'
    CheckSum64 = '92223af2a5c91f35ec2c60ca4440ed61b73db173573c7f4ccc75d79a0e2f389798e1f78d98243bd12febb47862d9474b8884b11ac17b9399d0293711df403c18'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
