$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.41/SideQuest-Setup-0.10.41-x64-win.exe'
    Checksum64 = '0757a774f9108376a1fc113d3bc6f461fb8b7f9f978f745830fd24ec88a44e08553d398f1a7774b17bce302de7851129fe996a6881fd3cdd75c54dc018ed39a0'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
