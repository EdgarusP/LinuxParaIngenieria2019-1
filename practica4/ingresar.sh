clear

echo "-- I N G R E S O --"
echo "-------------------"
echo "Ingrese su nombre de usuario"
read usuario
echo "Ingrese su contraseña"
read pass
echo "Verificando..."
sleep 1
if  [ -d bancos/ ]; then
	cd bancos/cuentas
	if [ -f $usuario.txt ]; then
		psw=`sed -n '2,2 p' $usuario.txt`
		if [ $pass = $psw ]; then
			echo "Ingresando..."
			sleep 1
			cd ../..
			export usuario
			sh menu.sh
		else
			echo "Constraseña incorrecta"
			sleep 2
			cd ../..
		fi
	else
		echo "Usuario inexistente"
		sleep 2
		cd ../..
	fi
fi
