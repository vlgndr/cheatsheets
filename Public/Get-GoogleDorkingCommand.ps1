<#
.SYNOPSIS
Displays a list Google Dorking commands.

.DESCRIPTION
This function provides a quick reference of Google Dorking commands.
You can optionally provide a case-insensitive filter to search within the 'Name', 'Command' and 'Description' column.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively to the 'Name','Command' and 'Description' column.

.EXAMPLE
Get-GoogleDorkingCommand

Displays the full list of Google Dorking commands.

.EXAMPLE
Get-GoogleDorkingCommand

Name        : Tag commit
Command     : git tag <tag> <ref>
Description : Create a tag pointing to a specific commit
Example     : git tag v1 HEAD^

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-GoogleDorkingCommand {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/69391a9ee496d6e8e0505bade0531c5f/raw/e5ac6a010a7b7c668b30717abc1b8922ce88bf3a/google-dorking.csv' -Filter $Filter -Columns Name,Command,Description

	$data
}