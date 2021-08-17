Param (
    [System.String]$Base64
)
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Base64))

<#
PS> $String = & $Base64ToString $Base64
PS> $String = Invoke-Command -ScriptBlock $Base64ToString -ArgumentList $Base64
#>
