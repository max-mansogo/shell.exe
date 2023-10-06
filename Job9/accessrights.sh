

# Chemin vers le fichier CSV contenant les informations des utilisateurs
csv_file="\\wsl.localhost\Ubuntu\home\king_maxy\shell.ex\Job9\Shell_Userlist.csv"

# Commande à exécuter lorsque le fichier CSV est modifié
command_to_run="\\wsl.localhost\Ubuntu\home\king_maxy\shell.exe\Job9\Shell_Userlist.csv"

# Vérifier si le fichier CSV existe
if [ -f "$csv_file" ]; then
  # Lire le fichier CSV ligne par ligne et créer les utilisateurs
  awk -F ',' 'NR > 1 {
    username = $1
    role = $2
    system("useradd " username)
    print "Utilisateur créé : " usernam
    if (role == "admin") {
      system("usermod -aG sudo " username)
      print "Permissions de super utilisateur accordées à : " username
    }
     password=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c6)
    echo -e "$password\n$password" | passwd "$username"
    echo "Mot de passe défini pour $username"
  }' "$csv_file"

else
  echo "Le fichier CSV n'existe pas."
fi



