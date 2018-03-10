
PASSWORD="linear"
if [ "$1" == "e" ]; then
   echo "Encrypting"
   for FILE in `find .  -iname "*.py"`
   do 
       
       gpg --yes --batch --passphrase=${PASSWORD} -c ${FILE}

   done 
   
fi

if [ "$1" == "d" ]; then
   echo "Decrypting"
   for FILE in `find .  -iname "*.py.gpg"`
   do 
       
       gpg --yes --batch --passphrase=${PASSWORD}  ${FILE}

   done 
fi


