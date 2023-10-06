#Format de la date(jj-mm-aaaa-HH:MM)
date_format=$(printf '%(%Y-%m-%d-%H:%M)T\n' )

#Utiliser la commande last pour affichez les connexions, wc -l compte les signes, on envoie la valeur dans un fichier cible
last "$1" | wc -l > number_connection-$date_format

#Utilisation de tar pour compreser un fichier et le --force-local precise l'emplacement du fichier sur la machine
tar --force-local -cvf number_connection-$date_format.tar number_connection-$date_format

#Deplacer le fichier vers Backup
mv number_connection-$date_format.tar ./Backup
