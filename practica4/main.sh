

echo  "seleccione una opcion:"
echo "0- apagar"
echo "1- crear usuario"
echo "2- ingresar usuario"
read opcion

case $opcion in
0) echo "muchas gracias";;
1) nocuenta= let $nocuenta + 1
   export nocuenta
   sh crear.sh;;
2) sh ingresar.sh;;
*) echo "opcion no valida";;
esac
