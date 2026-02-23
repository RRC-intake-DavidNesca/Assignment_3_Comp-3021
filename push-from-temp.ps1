# Push to GitHub from a folder OUTSIDE OneDrive (avoids permission errors)
# Run this in PowerShell. You may be prompted for your GitHub username and a Personal Access Token.

$repoUrl = "https://github.com/RRC-intake-DavidNesca/Assignment_3_Comp-3021.git"
$sourceDir = "c:\Users\Nesca\OneDrive\Documents\Secure coding\Assignment 3\Assignment_3_Comp-3021"
$tempDir = "c:\Temp\Assignment_3_Comp-3021_push"

# Create temp folder and copy project (excluding .git if present)
New-Item -ItemType Directory -Force -Path $tempDir | Out-Null
Get-ChildItem $sourceDir -Force | Where-Object { $_.Name -ne ".git" } | ForEach-Object {
    Copy-Item $_.FullName -Destination $tempDir -Recurse -Force
}

Set-Location $tempDir
git init
git branch -M main
git remote add origin $repoUrl
git add .
git commit -m "first commit"
git push -u origin main

Write-Host "Done. You can delete the folder: $tempDir"
Set-Location $sourceDir
