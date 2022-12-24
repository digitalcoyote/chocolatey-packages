$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileFullPath = Join-Path (Join-Path (Get-ToolsLocation) $env:ChocolateyPackageName) 'LiteDB.Studio.exe'
    URL = 'https://github.com/mbdavid/LiteDB.Studio/releases/download/v1.0.3/LiteDB.Studio.exe'
    Checksum = 'cf20a7ba1305f1fcb2956c844f7cbc16a8995d8995da3bf174d8e99f9b9a5b22679067dd18c89dc7da29423ec07cf252d90edc941ccc2fbd4e4553e3544f681e'
    ChecksumType = 'sha512'
}

Get-ChocolateyWebFile @InstallArgs
