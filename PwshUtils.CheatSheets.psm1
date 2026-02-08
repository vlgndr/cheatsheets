. "$PSScriptRoot\Private\Get-GistFile.ps1"

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

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/vlgndr/c9bcbc3350158726aaa67b1ae2103c91/raw/PowerShellLinuxMap.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Windows -ilike "*$Filter*" -or
			$_.Linux -ilike "*$Filter*" -or
			$_.Operation -ilike "*$Filter*" -or
			$_.Description -ilike "*$Filter*" 
		}
	}

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

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/vlgndr/8d240f6a885b301a7cbbfdcb563d4600/raw/VimCheatSheet.csv'
	if ($Filter) {
		$data = $data | Where-Object {
			$_.Command -ilike "*$Filter*" -or
			$_.Description -ilike "*$Filter*"
		}
	}
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

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/vlgndr/46f0ccd9b7d58d17d51e73e972e75caa/raw/WindowsRun.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Name -ilike "*$Filter*" -or
			$_.Command -ilike "*$Filter*" -or
			$_.Description -ilike "*$Filter*" 
		}
	}
	
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

	$data = Get-GistFile -Url 'https://gist.githubusercontent.com/vlgndr/1aaada0abbd7eb7114c9fee95151622d/raw/c61a5cb64b21982e3b76e10cff12f7bc4cefc760/docker.csv'

	if ($Filter) {
		$data = $data | Where-Object {
			$_.Name -ilike "*$Filter*" -or
			$_.Command -ilike "*$Filter*" -or
			$_.Description -ilike "*$Filter*" 
		}
	}
	
	$data
}