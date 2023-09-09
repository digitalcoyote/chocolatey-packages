import-module au

$releases = "https://github.com/canonical/multipass/releases"

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(Url64bit\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
      "(Checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(ChecksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
    "$($Latest.PackageName).nuspec" = @{
      "(\<releaseNotes\>\[Release Notes\]\().*?(\)\</releaseNotes\>)" = "`${1}$($Latest.ReleaseNotes)`$2"
  }
  }
}
function global:au_GetLatest {
  $version = '1.12.2'
  $url = "https://github.com/canonical/multipass/releases/download/v$version/multipass-$version+win-win64.exe"
  $releaseNotes = "https://github.com/canonical/multipass/releases/tag/v$version"
  return @{ Version = $version; URL64 = $url; ChecksumType64 = 'sha512'; ReleaseNotes = $releaseNotes}
}

Update-Package -ChecksumFor 64
