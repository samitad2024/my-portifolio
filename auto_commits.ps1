# This PowerShell script will make 44 dummy commits to your repo for GitHub contribution streaks.
# It will create a file called dummy_commit.txt and append a line for each commit.
# Usage: Open PowerShell in your repo folder and run: ./auto_commits.ps1

$filename = "dummy_commit.txt"

for ($i = 1; $i -le 44; $i++) {
    Add-Content $filename "Commit number $i - $(Get-Date)"
    git add $filename
    git commit -m "Dummy commit $i for contribution streak"
}

git push

Write-Host "44 commits created and pushed!"