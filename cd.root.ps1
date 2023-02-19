# cd.root.ps1 v004 02/08/2023
# Alias: cd.root    Change to users root directory.
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
Set-Location $tL":\"
Quit
}

function eFolder {
start explorer $tL":\"
Quit
}

function iFolder {
Set-Location $tL":\"
$dC=(Get-ChildItem -Directory | Measure-Object).Count
$fC=(Get-ChildItem -File | Measure-Object).Count
$fL=([system.uri](Get-Item $pwd).FullName).AbsoluteUri
Write-Host "$fL" -NoNewLine -BackgroundColor Black -ForegroundColor Yellow
Write-Host " Contains Folders: " -NoNewLine -BackgroundColor Black -ForegroundColor White
Write-Host "$dC" -NoNewLine -BackgroundColor Black -ForegroundColor DarkYellow
Write-Host " Files: " -NoNewLine -BackgroundColor Black -ForegroundColor White
Write-Host "$fC" -NoNewLine -BackgroundColor Black -ForegroundColor Cyan
Quit
}

function vFolder {
Set-Location $tL":\"
$dL=Get-ChildItem
$dL | Out-GridView -Title "Directory View"
Quit
}

function lFolder {
Set-Location $tL":\"
$dL=Get-ChildItem
$dL | out-file "$tP\$tF"
start notepad "$tP\$tF"
Quit
}

# General Functions -------------------
function About {
Logo
Write-Host ""
Write-Host " cd.root v:004 " -BackgroundColor White -ForegroundColor Black -NoNewLine
Write-Host " robert w eckert - rweckert@gmail.com`n"
Write-Host " Source: https://github.com/rweckert/alias.action/blob/main/cd.root.ps1"
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
Write-Host "cd.root         Default option changes to directory."
Write-Host "cd.root e       Open location with root Explorer."
Write-Host "cd.root l       Open location with notepad showing list of all items."
Write-Host "cd.root v       Open location with grid-view listing of all items."
Write-Host "cd.root i       Open location and display item totals."
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
If (Test-Path -Path $tP\$tF -PathType Leaf) {
remove-item -fo "$tP\$tF"}
exit
}

# Arguments ---------------------------
$aA=$args[0] # aA app argument

# Common Variables --------------------
$cP=""
$tL=(get-location).Drive.Name
$tP=$env:TEMP #tP temporary path
$tF="aaction.txt" #tF temporary file

# Parameters --------------------------
function Params {
if (!$aA)
{cFolder}
if ($aA -eq "a")
{About}
if ($aA -eq "e")
{eFolder}
if ($aA -eq "l")
{lFolder}
if ($aA -eq "v")
{vFolder}
if ($aA -eq "i")
{iFolder}
if ($aA -eq "h")
{sHelp}
}

Params