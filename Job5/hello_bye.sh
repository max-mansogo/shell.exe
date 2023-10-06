 i="$1"
if [ "$i" = "Hello" ];then 
    echo "Bonjour, je suis un script!"
elif [ "$i" = "Bye" ]; then
    echo "Au revoir et bonne journée!"
else
    echo  "Argument inconnu : "i"!"
fi
