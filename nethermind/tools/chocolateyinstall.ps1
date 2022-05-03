$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.12.8/nethermind-windows-amd64-1.12.8-2d3dd48-20220502.zip'
    CheckSum64 = 'e6910fbf11221c2463e797c33355a5b58fa6b2f96fa278b7f719c8eef41cbf079ef6eb590efa18e9f66aac466c78af3f6748103b48a6ddbe8f219351785d36db'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
