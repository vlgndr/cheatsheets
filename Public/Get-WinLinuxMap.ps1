<#
.SYNOPSIS
Displays a mapping of equivalent commands between Windows and Linux.

.DESCRIPTION
This function provides a reference table of common administrative or network-related commands
and their equivalents in both Windows and Linux environments.
You can optionally provide a case-insensitive filter to search within the 'Windows', 'Linux', 'Operation' and 'Description' columns.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively
to both the 'Windows', 'Linux', 'Operation' and 'Description' columns.

.EXAMPLE
Get-WinLinuxMap

Displays the full list of mapped commands.

.EXAMPLE
Get-WinLinuxMap ping

Filters the list to show only commands that include the word 'ping' in either the Windows or Linux command fields.

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-WinLinuxMap {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/c9bcbc3350158726aaa67b1ae2103c91/raw/PowerShellLinuxMap.csv' -Filter $Filter -Columns Windows,Linux,Operation,Description

	$data 
}