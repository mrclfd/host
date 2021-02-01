Write-Output("@DarkProjekt")
Write-Output("Memuat Scoop...")
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
Write-Output("Memuat persyaratan...")
scoop update
scoop install nodejs --global
scoop install git

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Output("Memuat DarkProjekt...")

git clone https://github.com/mrclfd/DarkProjekt
Set-Location DarkProjekt
npm install @adiwajshing/baileys
npm install chalk
node qr.js
