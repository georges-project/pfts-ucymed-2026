$logPath = "C:\Users\user\.gemini\antigravity\brain\a1e30c34-1952-423c-be36-79f88f43dfb9\.system_generated\logs\transcript.jsonl"
$lines = Get-Content -Path $logPath

$foundList = @()

for ($i = 0; $i -lt $lines.Count; $i++) {
    $line = $lines[$i]
    if (-not $line) { continue }
    try {
        $entry = ConvertFrom-Json $line -ErrorAction Stop
        # Search content
        if ($entry.content -and $entry.content.Contains("index.html") -and $entry.content.Contains("<!DOCTYPE html>")) {
            $foundList += [PSCustomObject]@{
                Index = $i
                Type = "content"
                Length = $entry.content.Length
                Data = $entry.content
            }
        }
        # Search tool calls and outputs
        if ($entry.tool_calls) {
            foreach ($tc in $entry.tool_calls) {
                if ($tc.arguments -and $tc.arguments.Contains("index.html")) {
                    # maybe we wrote it
                    if ($tc.arguments.Contains("<!DOCTYPE html>")) {
                        $foundList += [PSCustomObject]@{
                            Index = $i
                            Type = "tool_call_args"
                            Length = $tc.arguments.Length
                            Data = $tc.arguments
                        }
                    }
                }
            }
        }
    } catch {
        # ignore parse error
    }
}

Write-Output "Found $($foundList.Count) items in logs."

# Save all found items for us to see or use the largest one
for ($j = 0; $j -lt $foundList.Count; $j++) {
    $item = $foundList[$j]
    $outPath = "C:\Users\user\.gemini\antigravity\scratch\academic-poster-website\found_$($item.Index)_$($item.Type).txt"
    $item.Data | Out-File -FilePath $outPath -Encoding utf8
    Write-Output "Saved to $outPath (Length: $($item.Length))"
}
