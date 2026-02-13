<#
.SYNOPSIS
Displays a list of useful Docker commands.

.DESCRIPTION
This function provides a quick reference of Docker commands.
You can optionally provide a case-insensitive filter to search within the 'Name', 'Command' and 'Description' columns.

.PARAMETER Filter
A text string to filter the output. The filter is applied case-insensitively
to both the 'Name', 'Command' and 'Description' columns.

.EXAMPLE
Get-DockerCommand

Displays the full list of basic Docker commands.

.EXAMPLE
Get-DockerCommand shell

Name                  Command                                         Description
----                  -------                                         -----------
Enter Container Shell docker container exec -it <containerid> /bin/sh Open an interactive shell (/bin/sh) inside a run…

Filters the list to show commands containing 'shell' in either the name, command or description itself.

.NOTES
Author: vlgndr
Module: PwshUtils.CheatSheets
#>
Function Get-DockerCommand {
	param(
		[Parameter(Position = 0)]
		[string]$Filter
	)

  $data = Get-FilteredData -Url 'https://gist.githubusercontent.com/vlgndr/1aaada0abbd7eb7114c9fee95151622d/raw/c61a5cb64b21982e3b76e10cff12f7bc4cefc760/docker.csv' -Filter $Filter -Columns Name,Command,Description

	$data
}