# Updates an existing file on github
Param (
    [System.String]$Uri
    [System.String]$Headers
    [System.String]$Message
    [System.String]$Content
)
$Content = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($Content))
$Sha = (Invoke-RestMethod -Uri $Uri -Method Get -Headers $Headers).sha
$Body = @{message = $Message; content = $Content; sha = $Sha} | ConvertTo-Json
$Response = Invoke-RestMethod -Uri $Uri -Method Put -Headers $Headers -Body $Body

<#
PS> & $UpdateExistingGit $Uri $Headers $Message $Content
PS> Invoke-Command -ScriptBlock $UpdateExistingGit -ArgumentList $Uri,$Headers,$Message,$Content
#>
