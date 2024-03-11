import-module au

$releases = "https://github.com/authpass/authpass/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}


function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex         = '\/authpass\/authpass\/tree\/v\d{1,4}\.\d{1,4}\.\d{1,4}'
  $url           = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version       = $url -split '\/|v' | Select-Object -Last 1

  $versionReleasePage = Invoke-WebRequest -Uri "https://github.com/authpass/authpass/releases/expanded_assets/v$version" -UseBasicParsing
  $downloadregex      = "\/authpass\/authpass\/releases\/download\/v$version\/AuthPass-setup-.*.exe"
  $url                = $versionReleasePage.links | Where-Object href -match $downloadregex | Select-Object -First 1 -expand href
  $url                = "https://github.com$url"

  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512'; ReleaseNotes = $releaseNotes}
}

Update-Package -ChecksumFor 64