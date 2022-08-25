$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.32/SideQuest-Setup-0.10.32-x64-win.exe'
    Checksum64 = '0e70d5935a4b7e2fe3249a9457de7e06ddc2a15e223014fe38247ba4ccc8020d9cc1e3f43b395e5d4ba862e283faea6f5325883908b06bbb38b3b95aaa9ad882'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
