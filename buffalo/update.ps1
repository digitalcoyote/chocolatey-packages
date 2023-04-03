import-module au
$releases = "https://github.com/gobuffalo/cli/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(URL\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
      "(Url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(CheckSum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(CheckSum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(CheckSumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
      "(CheckSumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
    "$($Latest.PackageName).nuspec" = @{
      "(\<releaseNotes\>\[Release Notes\]\().*?(\)\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
  }
  }
}
function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex   = "gobuffalo\/cli\/tree\/v\d{1,4}\.?\d{0,4}\.?\d{0,4}\.?\d{0,4}"
  $url     = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/|v' | Select-Object -Last 1
  $ReleaseNotesVersion = $version -replace '\.', ''
  $url64 = "https://github.com/gobuffalo/cli/releases/download/v$version/buffalo_$($version)_Windows_x86_64.tar.gz"
  $url32 = "https://github.com/gobuffalo/cli/releases/download/v$version/buffalo_$($version)_Windows_i386.tar.gz"
  $releaseNotes = "https://gobuffalo.io/en/docs/release-notes/buffalo/v$ReleaseNotesVersion/"
  return @{ Version = $version; URL = $url32; URL64 = $url64; ChecksumType32 = 'sha512'; ChecksumType64 = 'sha512'; ReleaseNotes = $releaseNotes;}
}

Update-Package -ChecksumFor all