﻿import-module au

$releases = "https://github.com/JanDeDobbeleer/oh-my-posh/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64bit\s*=\s*)('.*')"       = "`$1'$($Latest.URL64)'"
      "(Checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex = '\/JanDeDobbeleer\/oh-my-posh\/releases\/download\/v\d{1,3}\.\d{1,3}\.\d{1,3}/install-amd64.exe$'
  
  $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|v' | Select-Object -Last 1 -skip 1
  $url = "https://github.com$url"

  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512'; ReleaseNotes = $releaseNotes }
}

Update-Package -ChecksumFor 64