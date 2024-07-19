Write-Host "--- Début du script ---"

Function Random-Password ($length = 12) # modification du nombre de caractères du mot de passe de 6 à 12
{
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    $password = get-random -count $length -input ($punc + $digits + $letters) |`
        ForEach -begin { $aa = $null } -process {$aa += [char]$_} -end {$aa}
    Return $password.ToString()
}

Function ManageAccentsAndCapitalLetters
{
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}

Function Log
{
    param([string]$FilePath, [string]$Content)

    # Vérifie si le fichier existe, sinon le crée
    If (-not (Test-Path -Path $FilePath))
    {
        New-Item -ItemType File -Path $FilePath | Out-Null
    }

    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $logLine = "$Date;$User;$Content"

    # Ajoute la ligne de journal au fichier
    Add-Content -Path $FilePath -Value $logLine
}

$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"
# Suppression des champs inutiles pour la création des utilisateurs
$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","fonction","description" -Encoding UTF8 | Select-Object -Skip 1 # modification du nombre de saut de ligne pour prendre en compte le 1er utilisateur du tableau 

foreach ($User in $Users)
{
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.nom
    $Name = "$Prenom.$Nom" # remplacement des variables nom et prenom par name
    If (-not(Get-LocalUser -Name $Name -ErrorAction SilentlyContinue))
    {
        $Pass = Random-Password
        $Password = (ConvertTo-SecureString $Pass -AsPlainText -Force)
        $Description = "$($user.description) - $($User.fonction)"
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            AccountNeverExpires  = $true
            PasswordNeverExpires = $true # modification pour que le mot de passe n'expire pas
            Description          = $Description # ajout de la description
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateurs" -Member $Name # correction "Utilisateurs" pour l'ajout au groupe
        Write-Host -ForegroundColor Green "Le compte $Name a été créé avec le mot de passe $Pass" # affichage en vert de l'utilisateur et du mot de passe
        Log -FilePath $LogFile -Content "Le compte $Name a été créé avec le mot de passe $Pass"
    }
    else
    {
        Write-Host -ForegroundColor Red "Le compte $Name existe déjà" # affichage en rouge de l'indication que l'utilisateur existe déjà
        Log -FilePath $LogFile -Content "Le compte $Name existe déjà"
    }
}

Write-Host "--- Fin du script ---"
Read-Host -Prompt "Appuyez sur Entrée pour terminer" # suppression du temps d'attente de fin de script par appui sur la touche Entrée
#Q2.5 il sautai deux ligne donc ratant le 1er utilisateur;la 1er ligne sont les nom des colone 
#Q2.6 la variable etait bien presente mais pas utiliser lors de la creation donc je lai rajouté 
#Q2.16 ManageAccentsAndCapitalLetters sert a suprimé les accent present dans le fichier csv et qui son incopatible avec la création dutilisateur 