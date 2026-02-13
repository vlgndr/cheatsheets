<#
.SYNOPSIS
Displays a list of useful Windows commands and shortcuts.

.DESCRIPTION
This function provides a quick reference of Windows commands that can be used via Run dialog, terminal, or shortcuts.
You can optionally provide a case-insensitive filter to search within the 'Name', 'Command' and 'Description' columns.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively
to both the 'Name', 'Command' and 'Description' columns.

.EXAMPLE
Get-WindowsCommand

Displays the full list of known Windows commands.

.EXAMPLE
Get-WindowsCommand task

Filters the list to show commands containing 'task' in either the name or the command itself.

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-WindowsCommand {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/46f0ccd9b7d58d17d51e73e972e75caa/raw/WindowsRun.csv' -Filter $Filter -Columns Name,Command,Description

	$data
}