Param (
    [System.String]$Uri,
    [System.Collections.Hashtable]$Headers
)
$Base64 = (Invoke-RestMethod -Uri $Uri -Method Get -Headers $Headers).content
$Content = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Base64))
[System.Management.Automation.ScriptBlock]::Create($Content)
