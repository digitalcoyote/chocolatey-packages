$ErrorActionPreference = 'Stop';

$InstallArgs = @{
    PackageName = $env:ChocolateyPackageName
    FileType = 'exe'
    SilentArgs = '/S'
    URL64 = 'https://github.com/SideQuestVR/SideQuest/releases/download/v0.10.42/SideQuest-Setup-0.10.42-x64-win.exe'
    Checksum64 = 'c75cf641590eaa8cd17bd50fed30e7d4359c5f7840957ee4bf692e01af4741029f471217df1716a3266f6c66ab446410fc84f9d011e591566bbf46555320f177'
    ChecksumType64 = 'sha512'
}

Install-ChocolateyPackage @InstallArgs
