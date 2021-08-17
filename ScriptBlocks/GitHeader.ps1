# Creates auth header using Personal Access Token
Param (
    [System.String]$User,
    [System.String]$Token
)
@{Authorization = "Basic $([System.Convert]::ToBase64String([System.Char[]]"$User`:$Token"))"}

<#
PS> # Get scriptblock from github
PS> $Text = Invoke-RestMethod -Uri https://powershell.poecoh.com/ScriptBlocks/GitHeader.ps1
PS> $ScriptBlock = [System.Management.Automation.ScriptBlock]::Create($Text)

PS> # Invoke scriptblock
PS> $Body = & $ScriptBlock $User $Token
PS> $Body = Invoke-Command -ScriptBlock $ScriptBlock -ArgumentList $User,$Token
#>
