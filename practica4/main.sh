clear

if [ -d  bancos/ ]; then
	cd bancos
	cd .. 
else
        mkdir bancos/
	cd bancos/
	mkdir logs/ cuentas/
	cd logs
	touch cuentas.txt historial.txt superior.txt
	echo "1" >> cuentas.txt
	cd ../../
fi

echo "Bienvenido a nuestro sistema bancario"
echo "Seleccione una opcion:"
echo "1- Crear usuario"
echo "2- Ingresar usuario"
echo "3- Recuperar cuenta"
read opcion

case $opcion in
1) sh crear.sh;; 
2) sh ingresar.sh;;
3) sh recuperar.sh;;
*) echo "opcion no valida";;
esac
clear
