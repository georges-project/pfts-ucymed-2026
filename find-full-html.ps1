$logPath = "C:\Users\user\.gemini\antigravity\brain\a1e30c34-1952-423c-be36-79f88f43dfb9\.system_generated\logs\transcript.jsonl"
$lines = Get-Content -Path $logPath
$foundFullHtml = $null
$foundIndex = -1

for ($i = $lines.Count - 1; $i -ge 0; $i--) {
    $line = $lines[$i]
    if (-not $line) { continue }
    try {
        # Check if the line contains "<!DOCTYPE html>" or similar
        if ($line.Contains("<!DOCTYPE html>") -and $line.Contains("Βιβλιογραφία")) {
            # Let's try to extract it from the JSON entry
            $entry = ConvertFrom-Json $line -ErrorAction Stop
            # Check entry.content or within tool_calls/arguments etc.
            if ($entry.content -and $entry.content.Contains("<!DOCTYPE html>")) {
                $foundFullHtml = $entry.content
                $foundIndex = $i
                break
            }
            # Also check tool_calls
            if ($entry.tool_calls) {
                foreach ($tc in $entry.tool_calls) {
                    if ($tc.arguments -and $tc.arguments.Contains("<!DOCTYPE html>")) {
                        $foundFullHtml = $tc.arguments
                        $foundIndex = $i
                        break
                    }
                }
                if ($foundFullHtml) { break }
            }
        }
    } catch {
        # ignore parse error
    }
}

if ($foundFullHtml) {
    Write-Output "Found full HTML at log line $foundIndex"
    # If it is inside JSON, it might be double escaped. We need to save it correctly.
    # If $foundFullHtml is a string from ConvertFrom-Json, it is already unescaped.
    # If it's from tool_calls or arguments, let's see if we can parse it as a JSON object if it is a JSON string.
    try {
        $tcObj = ConvertFrom-Json $foundFullHtml -ErrorAction Stop
        if ($tcObj.CodeContent) {
            $foundFullHtml = $tcObj.CodeContent
        }
    } catch {}

    $foundFullHtml | Out-File -FilePath "C:\Users\user\.gemini\antigravity\scratch\academic-poster-website\restored_index.html" -Encoding utf8
} else {
    Write-Output "Full HTML not found"
}
