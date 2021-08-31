$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.11.1/nethermind-windows-amd64-1.11.1-919e4cc-20210831.zip'
    CheckSum64 = 'c318e2f3550630474791530dae4f204bb207999c4eae39763a947192d694af7ea049f8276be96b590fddaa569f6bf218fe771252895360c4ce43b79a4220c8f5'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
