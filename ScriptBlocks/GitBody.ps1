# Creates a body for a git put request
Param (
    [System.String]$Message,
    [System.String]$Content,
    [System.String]$Sha
)
$Content = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($Content))
@{message = $Message; content = $Content; sha = $Sha} | ConvertTo-Json
# PS> & $Block $Message $Content $Sha
