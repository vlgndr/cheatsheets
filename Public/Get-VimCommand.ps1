<#
.SYNOPSIS
Displays a cheat sheet of common Vim commands and configurations.

.DESCRIPTION
This function provides a quick reference to essential Vim commands, categorized by section.
You can optionally provide a filter string to search within the 'Command' and 'Description' column.

.PARAMETER Filter
A case-insensitive text filter that matches against the 'Command' and 'Description' column.
Returns only rows where the command contains the specified text.

.EXAMPLE
Get-VimCommand

Displays the full Vim cheat sheet.

.EXAMPLE
Get-VimCommand gg

Displays only the Vim commands that contain 'gg'.

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-VimCommand {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/8d240f6a885b301a7cbbfdcb563d4600/raw/VimCheatSheet.csv' -Filter $Filter -Columns Command,Description

	$data
}