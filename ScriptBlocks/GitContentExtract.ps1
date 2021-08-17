# Extracts content from git response (base64 to string)
Param (
    [System.String]$Content
)
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($Content))

# You could get content in plain text if you used the raw download link supplied in the response.
# However it's another call and we already have the encoded content, so just cut out another call and decode it.
