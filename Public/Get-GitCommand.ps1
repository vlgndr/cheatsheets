<#
.SYNOPSIS
Displays a list Git commands.

.DESCRIPTION
This function provides a quick reference of Git commands.
You can optionally provide a case-insensitive filter to search within the 'Name', 'Command' and 'Description' column.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively to the 'Name','Command' and 'Description' column.

.EXAMPLE
Get-GoogleDorkingCommand

Displays the full list of Google Dorking commands.

.EXAMPLE
Get-GoogleDorkingCommand type

Name               Command   Description                    Example
----               -------   -----------                    -------
Specific file type filetype: Search for specific file types filetype:pdf

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-GitCommand {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/9042ded914cdc20ad49231b1e1ebf4de/raw/5e97ff57344a1175a30a94ee2e15d815262ebf63/git.csv' -Filter $Filter -Columns Name,Command,Description

	$data
}
