
clear
echo "--R E C U P E R A C I Ó N --"
echo "----------------------------"

echo "Nombre de Usuario"
read usuario
echo "Contraseña"
read pass
cd bancos/cuentas
if [ -f $usuario.txt ] ; then
	estado=`sed -n '$p' $usuario.txt`
	if [ "$estado" = "inactivo" ]; then
		psw=`sed -n '2 p' $usuario.txt`
		if [ "$psw" = "$pass" ]; then
			cd ../logs/
			cuenta=`cat cuentas.txt`
			cd ../cuentas/
			tipo=`sed -n '3 p' $usuario.txt`
			saldo=`sed -n '5 p' $usuario.txt`
			echo "$usuario" > $usuario.txt
			echo "$pass" >> $usuario.txt
			echo "$tipo" >> $usuario.txt
			echo "$cuenta" >> $usuario.txt
			echo "$saldo" >> $usuario.txt
			echo "activo" >> $usuario.txt
			cd ../logs/
			let cuenta=cuenta+1
			echo "$cuenta" > cuentas.txt
		else
			echo "Contraseña Incorrecta."
			sleep 3
		fi
	else
		echo "Su cuenta ya se encuentra activa."
		sleep 3
	fi
else
	echo "Usuario Inexistente"
	sleep 3
fi
cd ../..
