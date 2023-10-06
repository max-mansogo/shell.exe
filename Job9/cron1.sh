
# Surveillance des modifications du fichier CSV
inotifywait -m -e modify "$csv_file" |
  while read -r directory events filename; do
    if [ "$filename" = "$csv_file" ]; then
      # Exécution du script principal
      $command_to_run
    fi
  done

