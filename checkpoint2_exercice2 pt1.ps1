Start-Process -FilePath "powershell.exe" -ArgumentList "C:\Scripts\AddLocalUsers.ps1" -Verb RunAs -WindowStyle Maximized #correction du chement d'accept au script 

# Verb RunAs : Indique que le processus doit être exécuté avec des privilèges élevés (en tant qu'administrateur).
# WindowStyle Maximized : Spécifie que la fenêtre du processus doit être maximisée à son lancement.