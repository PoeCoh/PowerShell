Param (
    [System.String]$Uri,
    [System.Collections.Hashtable]$Headers,
    [System.String]$Message,
    [System.String]$Content
)
$Content = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($Content))
$Body = @{message = $Message; content = $Content; sha = $Sha} | ConvertTo-Json
Invoke-RestMethod -Uri $Uri -Method Put -Headers $Headers -Body $Body
