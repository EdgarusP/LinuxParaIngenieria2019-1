clear
echo "Desactivar------------------------------------------------"
echo "ingrese su nombre de usuario: "
read user

echo "ingrese su contraseña: "
read pwd

cd bancos/cuentas
fichero=$user.txt
if  [ -f $fichero ]
then 
        tail -n 1 "$fichero" | wc -c | xargs -I {} truncate "$fichero" -s -{}
        echo "inactivo" >> $fichero

else
        echo "asegurese de que la informacion ingresada esta bien escrita o de lo contrario proceda a registrar un usuario"

fi
