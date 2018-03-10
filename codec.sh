
PASSWORD="linear"

if [ "$1" == "e" ]; then
   echo "Encrypting"
   for FILE in `find ./ -type f \( -iname \*.py -o -iname \*.txt \)`
   do 
       
       gpg --yes --batch --passphrase=${PASSWORD} -c ${FILE}
       rm -f ${FILE}

   done 
   
fi

if [ "$1" == "d" ]; then
   echo "Decrypting"
   for FILE in `find ./ -type f \( -iname \*.py.gpg -o -iname \*.txt.gpg \)`
   do 
       
       gpg --yes --batch --passphrase=${PASSWORD}  ${FILE}
       rm -f ${FILE}

   done 
fi


