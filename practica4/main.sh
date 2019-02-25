if [ -d  bancos/ ]; then
	cd bancos
	cd .. 
else
        mkdir bancos/
	cd bancos/
	mkdir logs/ cuentas/
	cd logs
	touch cuentas.txt
	echo "1" >> cuentas.txt
	cd ../../
fi

echo  "seleccione una opcion:"
echo "1- crear usuario"
echo "2- ingresar usuario"

read opcion

case $opcion in
1) sh crear.sh;; 
2) sh ingresar.sh;;
*) echo "opcion no valida";;
esac
