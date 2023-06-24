# Dort wo das Skript ausgeführt wird, werden die Ordner erstellt

sudo rm -r Escapedoom-Auth-master/
sudo rm -r EscapeDoomFrontend-master/
sudo rm -r EscapeDoomExecutor-master/

$webUrl = "https://github.com/megamxl/Escapedoom-Auth/archive/refs/heads/master.zip"
Invoke-WebRequest -Uri $webUrl -OutFile "$($PSScriptRoot)\dockerShit.zip"
Expand-Archive "$($PSScriptRoot)\dockerShit.zip" $($PSScriptRoot) -Force
Remove-Item "$($PSScriptRoot)\dockerShit.zip"

$webUrl = "https://github.com/SpodoY/EscapeDoomFrontend/archive/refs/heads/master.zip"
Invoke-WebRequest -Uri $webUrl -OutFile "$($PSScriptRoot)\dockerShit.zip"
Expand-Archive "$($PSScriptRoot)\dockerShit.zip" $($PSScriptRoot) -Force
Remove-Item "$($PSScriptRoot)\dockerShit.zip"

$webUrl = "https://github.com/megamxl/EscapeDoomExecutor/archive/refs/heads/master.zip"
Invoke-WebRequest -Uri $webUrl -OutFile "$($PSScriptRoot)\dockerShit.zip"
Expand-Archive "$($PSScriptRoot)\dockerShit.zip" $($PSScriptRoot) -Force
Remove-Item "$($PSScriptRoot)\dockerShit.zip"

# Game Session
Write-Host "Starting with Game Session `n"

Set-Location "$PSScriptRoot\Escapedoom-Auth-master\GameSession"
docker build -t escapedoom-backend/gamesession:1 -f .Dockerfile .

# Lector Portal
Write-Host "Starting with Lector Portal `n"

Set-Location "$PSScriptRoot\Escapedoom-Auth-master\LectorPotral"
docker build -t escapedoom-backend/lectorportal:1 -f .Dockerfile .

# Frontend
Set-Location "$PSScriptRoot\EscapeDoomFrontend-master"
docker build -t escapedoom-frontend/website:1 -f .Dockerfile .

# Executor
Write-Host "Starting with Executor Portal `n"
Set-Location "$PSScriptRoot\EscapeDoomExecutor-master"
docker build -f app.Dockerfile -t escapedoom-backend/executor:1 .

# Nginx
Write-Host "Starting with Nginx `n"
Set-Location "$PSScriptRoot\Escapedoom-Auth-master\Nginx"
docker build -t nginx -f .Dockerfile .
