

if [ "$2" = "+" ]; then
   resultat=$(($1 + $3))
   echo "le résultat est égal à :" $resultat
elif [ "$2" = "-" ]; then
   resultat=$(($1 - $3))
   echo "Le résultat est égal à :" $resultat
elif [ "$2" = "x" ]; then
   resultat=$(($1 * $3))
   echo "Le résultat est égal à :" $resultat
elif [ "$2" = "/"  ]; then
   resultat=$(($1 / $3))
   echo "Le résultat est égal à :" $resultat
fi
