. "$PSScriptRoot\Private\Get-GistFile.ps1"
. "$PSScriptRoot\Private\Get-FilteredData.ps1"

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