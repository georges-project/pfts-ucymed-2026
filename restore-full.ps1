$logPath = "C:\Users\user\.gemini\antigravity\brain\a1e30c34-1952-423c-be36-79f88f43dfb9\.system_generated\logs\transcript.jsonl"
$lines = Get-Content -Path $logPath

for ($i = $lines.Count - 1; $i -ge 0; $i--) {
    $line = $lines[$i]
    if (-not $line) { continue }
    if ($line.Contains("index.html") -and $line.Contains("<!DOCTYPE html>")) {
        Write-Output "Found potential full index.html at line $i"
        $line | Out-File -FilePath "C:\Users\user\.gemini\antigravity\scratch\academic-poster-website\raw_line_$i.txt" -Encoding utf8
    }
}
