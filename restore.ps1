$logPath = "C:\Users\user\.gemini\antigravity\brain\a1e30c34-1952-423c-be36-79f88f43dfb9\.system_generated\logs\transcript.jsonl"
$lines = Get-Content -Path $logPath
for ($i = $lines.Count - 1; $i -ge 0; $i--) {
    $line = $lines[$i]
    if (-not $line) { continue }
    try {
        $entry = ConvertFrom-Json $line -ErrorAction Stop
        if ($entry.content -and $entry.content.Contains("Total Lines: 393")) {
            Write-Output "Found at index $i"
            $entry.content | Out-File -FilePath "C:\Users\user\.gemini\antigravity\scratch\academic-poster-website\found.txt" -Encoding utf8
            break
        }
    } catch {
        # ignore parse error
    }
}
