$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.26/SideQuest-Setup-0.10.26-x64-win.exe'
    Checksum64 = '2f0dd801f441050f152554d63d7ab2cf976197004c4f071d9c1842ec88173a420866e83b8869ad616d302fde90aab903673660f37c4cc0df19a39b909d692b0a'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
