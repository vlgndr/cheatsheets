Function Get-FilteredData {
	param(
		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
		[string]$Url,

		[string]$Filter,

		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
    [string[]]$Columns
	)

  Write-Verbose "GetFilteredData: Url=$Url"
  Write-Verbose "GetFilteredData: Filter=$Filter"
  Write-Verbose "GetFilteredData: Columns=$Columns"
	$data = Get-GistFile -Url $Url

  if (-not $Filter) {
    return $data
  }

  $data = $data | Where-Object {
    foreach ($col in $Columns) {
      $value = $_.$col
      if ($value -and $value -ilike "*$Filter*") {
        return $true
      }
    }
    $false
  }

  $data
}