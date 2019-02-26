clear

echo "BIENVENIDO $nombre"
echo "------------------"
echo "Elija un servicio:"
echo "1- Hacer un retiro"
echo "2- Realizar una consignacion"
echo "3- Consultar saldo"
echo "4- Transferir dinero"
echo "5- Cambiar clave"
echo "6- Eliminar cuenta"
echo "------------------"
read opcion

case $opcion in
1) sh retirar.sh;; 
2) sh consignar.sh;;
3) sh consultar.sh;;
4) sh transferir.sh;; 
5) sh cambiar.sh;;
6) sh eliminar.sh;;
*) echo "opcion no valida";;
esac

