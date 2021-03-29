$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.50/nethermind-windows-amd64-1.10.50-7b1a10f-20210329.zip'
    CheckSum64 = '743313e48d9466cbfeadf9982d447094ac4d0c8ee7946749659b2d96b4482669f3f418ce78481dc0453ceae6be19145c544722e6f97382afe043b61cdb2c1015'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
