$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.10.62/nethermind-windows-amd64-1.10.62-ffb43f2-20210423.zip'
    CheckSum64 = 'e6308d552feba8f5081aadc8f355b062e280397e4d389e4eff39574a70c9e06a566e717a1982aa855d81407e374295ddf9e6025051d594a1fb65dfe6f3d5e8eb'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
