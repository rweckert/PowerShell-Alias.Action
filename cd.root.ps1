# cd.root.ps1 v004 02/08/2023
# Alias: cd.root    Change to users deskop directory.
# robert w eckert - rweckert@gmail.com
# Source: https://github.com/rweckert/alias.action/blob/main/cd.root.ps1
# License: https://github.com/rweckert/PowerShell-Script-Utilities/blob/main/LICENSE

function Logo {
Write-Host "       _ _                       _   _             "
Write-Host "  __ _| |_| __ _ ___   __ _  ___| |_|_| ___  _ __  "
Write-Host " / _  | | |/ _  / __| / _  |/ __| __| |/ _ \|  _ \ "
Write-Host "| (_| | | | (_| \__ \| (_| | (__| |_| | (_) | | | |"
Write-Host " \__,_|_|_|\__,_|___(_)__,_|\___|\__|_|\___/|_| |_|"
}

# Application Functions ---------------
function cFolder {
$tL = (get-location).Drive.Name
Set-Location $tL":\"
Quit
}

function eFolder {
$tL = (get-location).Drive.Name
start explorer $tL":\"
Quit
}

function iFolder {
$tL = (get-location).Drive.Name
Set-Location $tL":\"
$dC=(Get-ChildItem -Directory | Measure-Object).Count
$fC=(Get-ChildItem -File | Measure-Object).Count
Write-Host "$tL" -NoNewLine -BackgroundColor Black -ForegroundColor Yellow
Write-Host " Contains Folders: " -NoNewLine -BackgroundColor Black -ForegroundColor White
Write-Host "$dC" -NoNewLine -BackgroundColor Black -ForegroundColor Cyan
Write-Host " Files: " -NoNewLine -BackgroundColor Black -ForegroundColor White
Write-Host "$fC" -NoNewLine -BackgroundColor Black -ForegroundColor Cyan
Quit
}

# General Functions -------------------
function About {
Logo
Write-Host ""
Write-Host " cd.root v:004 " -BackgroundColor White -ForegroundColor Black -NoNewLine
Write-Host " robert w eckert - rweckert@gmail.com`n"
Write-Host " Source: https://github.com/rweckert/PowerShell-Script-Utilities/blob/main/filename.ps1"
Write-Host " License: https://github.com/rweckert/PowerShell-Script-Utilities/blob/main/LICENSE"
Write-Host ""
Quit
}

function sHelp {
clear
Logo
Write-Host ""
Write-Host " cd.root v:004 " -BackgroundColor White -ForegroundColor Black -NoNewLine
Write-Host " Navigation Utility`n" -BackgroundColor Black -ForegroundColor White
Write-Host "cd.root is a utility that allows a user to change to or explore the root directory."
Write-Host "This script can be utilized with command switches as described below:`n"
Write-Host "cd.root         Default option changes current directory to the root."
Write-Host "cd.root e       Open root location with Windows Explorer."
Write-Host "cd.root i       Display number of items and change directory to root."
Write-Host "cd.root a       Version and license information."
Write-Host "cd.root h       Help documentation.`n"
Write-Host " a " -background DarkBlue -foregroundcolor White -NoNewLine
Write-Host " About " -foregroundcolor White -NoNewLine
Write-Host " q " -background Red -foregroundcolor White -NoNewLine
Write-Host " Quit " -foregroundcolor White -NoNewLine
$input = (Read-Host "  Selection")
Write-Host ""
Switch ($input) {
'a' {About}
'q' {Quit}
Default {Write-Host "Selection: $input is not valid." -foreground:Red}
}
sHelp
}

function Quit {
exit
}

# Arguments ---------------------------
$aA=$args[0] # aA app argument

# Common Variables --------------------
$cP=""

# Parameters --------------------------
function Params {
if (!$aA)
{cFolder}
if ($aA -eq "a")
{About}
if ($aA -eq "e")
{eFolder}
if ($aA -eq "i")
{iFolder}
if ($aA -eq "h")
{sHelp}
}

Params
