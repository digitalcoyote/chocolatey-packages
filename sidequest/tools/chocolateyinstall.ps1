$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v1.4.2/SideQuest-Setup-1.4.2-x64-win.exe'
    Checksum64 = 'e22294a7b60788b2930f7937a2ac4b320d9a33471a4a31c1d255b6999fe9888de9183ae615728e1751147e1ff96fbdf71c760daa46d52dce1d42e72c00696b69'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
