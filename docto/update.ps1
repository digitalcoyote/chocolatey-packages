import-module au

$releases = "https://github.com/tobya/DocTo/releases/"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(URL\s*=\s*)('.*')" = "`$1'$($Latest.URL)'"
      "(URL64\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
      "(Checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = '/tobya/DocTo/tree/[vV]\d{1,4}\.{0,1}\d{0,4}\.{0,1}\d{0,4}.*'
  $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|V' | Select-Object -Last 1
  $url = "https://github.com/tobya/DocTo/releases/download/v$version/docto_32.zip"
  $url64 = "https://github.com/tobya/DocTo/releases/download/v$version/docto_64.zip"

  return @{ Version = $version; URL = $url; URL64= $url64; ChecksumType = 'sha512'; ChecksumType64 = 'sha512';}
}

Update-Package -ChecksumFor all