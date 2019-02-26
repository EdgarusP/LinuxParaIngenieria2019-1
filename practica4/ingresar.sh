clear

echo "-- I N G R E S O --"
echo "-------------------"
echo "Ingrese su nombre de usuario"
read usuario
echo "Ingrese su contraseña"
read pass
echo "Verificando..."
sleep 2
if  [ -d bancos/ ]; then
	cd bancos/cuentas
	if [ -f $usuario.txt ]; then
		if [ "$pass" = "$psw" ]; then
			clear
			echo "Ingresando..."
			sleep 2
			cd ..
			cd ..
			sh menu.sh
		fi
	else
		echo "¡Debes crear tu usuario primero para ingresar!"
		sleep 3
		cd ..
		cd ..
		sh crear.sh
	fi
fi
