Param (
    [System.String]$User,
    [System.String]$Token
)
@{Authorization = "Basic $([System.Convert]::ToBase64String([System.Char[]]"$User`:$Token"))"}

<#
PS> $Body = & $BuildGitHeader $User $Token
PS> $Body = Invoke-Command -ScriptBlock $BuildGitHeader -ArgumentList $User,$Token
#>
