# PwshUtils.CheatSheets

**PwshUtils.CheatSheets** is a PowerShell module that offers lightweight, searchable cheat sheets for tools like Vim, common Windows system commands, and equivalent commands between Windows and Linux. Ideal for quick reference and cross-platform users.

---

## 📦 Installation


```powershell
git clone https://github.com/vlgndr/pwshutils-cheatsheets.git
Import-Module .\pwshutils-cheatsheets\PwshUtils.CheatSheets.psd1
```

---

## 🧩 Available Commands

### `Get-VimCommand [<Filter>]`
Displays a categorized Vim cheat sheet.  

```powershell
Get-VimCommand
Get-VimCommand syntax
```

---

### `Get-WindowsCommand [<Filter>]`
Displays common Windows system commands and shortcuts.  

```powershell
Get-WindowsCommand
Get-WindowsCommand task
```

---

### `Get-WinLinuxMap [<Filter>]`
Provides a mapping of equivalent commands between Windows and Linux.  

```powershell
Get-WinLinuxMap
Get-WinLinuxMap ping
```

### `Get-DockerCommand [<Filter>]`
Displays basic Docker commands. 

```powershell
Get-DockerCommand
Get-DockerCommand images
```

---

## 🔎 Features

- Simple, readable output
- Case-insensitive filtering for fast lookup
- Ideal for terminal users, admins, and Vim learners
- Data is fetched from trusted, readonly sources (author-maintained GitHub Gists)

---

## 📄 License

MIT License

---

## 🔗 Links

- [PowerShell Gallery](https://www.powershellgallery.com/packages/PwshUtils.CheatSheets)
- [GitHub Repository](https://github.com/vlgndr/pwshutils-cheatsheets)
