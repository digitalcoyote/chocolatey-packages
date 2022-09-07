$ErrorActionPreference = 'Stop';

$ZipInstallArgs = @{
    PackageName = $env:ChocolateyPackageName 
    UnzipLocation = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)
    Url64 = 'https://github.com/NethermindEth/nethermind/releases/download/1.14.1/nethermind-windows-amd64-1.14.1-1a32d45-20220906.zip'
    CheckSum64 = '69fd5de6b838200954217be9c1cdaf5bdb30d99bc170c80dfdc03fcaf32f86f5acd4503e2250fa7264fc2dbf49848bfaa6dada9d8cc843937afbf0b68736fd22'
    CheckSumType64 = 'sha512'
}

Install-ChocolateyZipPackage @ZipInstallArgs
Write-Output "Run 'Nethermind.Launcher.exe' and select the desired configuration to get started"
