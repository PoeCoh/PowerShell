# Extracts content from git response (base64 to string)
Param (
    [System.String]$Content
)
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Content))
