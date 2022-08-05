$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.30/SideQuest-Setup-0.10.30-x64-win.exe'
    Checksum64 = '0421eb3c23fef86c4ca03210892edbb31ee77b865f9a2107468b73b379cb6985fb9cf28dfa406726cc8b274b290687837ec95ad8b65fe28ed275592d37cbea8e'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
