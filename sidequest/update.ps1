import-module au

$releases = "https://github.com/SideQuestVR/SideQuest/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(URL64\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
      "(Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '/SideQuestVR/SideQuest/tree/v\d{1,3}\.\d{1,3}\.\d{1,3}'
  $url     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|v' | Select-Object -Last 1
  $url = "https://github.com/SideQuestVR/SideQuest/releases/download/v$version/SideQuest-Setup-$version-x64-win.exe"
  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512';}
}

Update-Package -ChecksumFor 64