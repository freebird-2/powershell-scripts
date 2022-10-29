# locates files that match the search pattern, then opens each directory in File Explorer
$pattern = 'notepad.exe'

# method 1
foreach ($file in where.exe $pattern) {
    Start-Process (Split-Path -Path $file)
}

# method 2 (one-liner)
where.exe $pattern | ForEach-Object { Split-Path -Parent $_ } | Start-Process $_