﻿import-module au

$releases = "https://github.com/Tichau/FileConverter/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url\s*=\s*)('.*')"          = "`$1'$($Latest.URL64)'"
      "(Checksum\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex = '\/Tichau\/FileConverter\/tree\/v\d{1,4}\.\d{1,4}\.?\d{0,4}'
  $versionurl = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $versionurl -split '\/|v' | Select-Object -Last 1
  $url64 = "https://github.com/Tichau/FileConverter/releases/download/v$version/FileConverter-$version-x64-setup.msi"
  return @{ Version = $version; URL64 = $url64; ChecksumType64 = 'sha512';}
}

Update-Package -ChecksumFor all
