# Creates a body for a git put request
Param (
    [System.String]$Message,
    [System.String]$Content,
    [System.String]$Sha
)
$Content = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($Content))
@{message = $Message; content = $Content; sha = $Sha} | ConvertTo-Json
<#
PS> # Get scriptblock from github
PS> $Text = Invoke-RestMethod -Uri https://raw.githubusercontent.com/PoeCoh/PowerShell/main/ScriptBlocks/GitBody.ps1
PS> $ScriptBlock = [System.Management.Automation.ScriptBlock]::Create($Text)

PS> # Invoke scriptblock
PS> $Body = & $ScriptBlock $Message $Content $Sha
PS> $Body = Invoke-Command -ScriptBlock $ScriptBlock -ArgumentList $Message,$Content,$Sha
#>
