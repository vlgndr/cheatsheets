<#
.SYNOPSIS
Displays a list of Regex examples.

.DESCRIPTION
This function provides a quick reference of Regex examples.
You can optionally provide a case-insensitive filter to search within the 'Name'

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively to the 'Name' column.

.EXAMPLE
Get-RegexExample

Displays the full list of Regex Example.

.EXAMPLE
Get-RegexExample swap

Name       : Swap two words
Find       : (\w+)\s+(\w+)
Replace    : $2 $1
VimCommand : :%s/\(\w\+\)\s\+\(\w\+\)/\2 \1/g
Example    : hello world → world hello

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-RegexExample {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/c953882a43cc7ddfb186ea5e6d1daa1a/raw/9acb14826bdc9b3ac658824235c5fac6cb4f8d3e/regex-examples.csv' -Filter $Filter -Columns Name

	$data
}