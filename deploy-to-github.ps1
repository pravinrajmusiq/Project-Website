# Deploy Project Website to GitHub
# Run this AFTER creating the repo at: https://github.com/new

$repoName = "Project-Website"  # Change if you used a different name
$username = "pravinrajmusiq"

Write-Host "Connecting to GitHub..." -ForegroundColor Cyan
git remote add origin "https://github.com/$username/$repoName.git" 2>$null
git remote set-url origin "https://github.com/$username/$repoName.git" 2>$null

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSuccess! Your site is at: https://github.com/$username/$repoName" -ForegroundColor Green
    Write-Host "Enable GitHub Pages: Repo > Settings > Pages > Source: main branch" -ForegroundColor Yellow
} else {
    Write-Host "`nCreate the repo first: https://github.com/new" -ForegroundColor Red
    Write-Host "Name it: $repoName (or update this script)" -ForegroundColor Red
}
