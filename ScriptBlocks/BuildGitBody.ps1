Param (
    [System.String]$Message,
    [System.String]$Content,
    [System.String]$Sha
)
$Content = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($Content))
@{message = $Message; content = $Content; sha = $Sha} | ConvertTo-Json

<#
PS> $Body = & $BuildGitBody $Message $Content $Sha
PS> $Body = Invoke-Command -ScriptBlock $BuildGitBody -ArgumentList $Message,$Content,$Sha
#>
