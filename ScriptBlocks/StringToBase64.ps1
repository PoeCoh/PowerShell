Param (
    [System.String]$String
)
[System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($String))

<#
PS> $Base64 = & $StringToBase64 $String
PS> $Base64 = Invoke-Command -ScriptBlock $StringToBase64 -ArgumentList $String
#>
