# Creates auth header using Personal Access Token
Param (
    [System.String]$User,
    [System.String]$Token
)
@{Authorization = "Basic $([System.Convert]::ToBase64String([System.Char[]]"$User`:$Token"))"}
