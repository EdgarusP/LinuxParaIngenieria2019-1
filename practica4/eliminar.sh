clear
echo "-- D E S A C T I V A R --"
cd bancos/cuentas/
echo "ingrese su nombre de contraseña"
read pass
psw=`sed -n '2 p' $usuario.txt`

if[ "$pass" = "$psw" ];then
	tipo=`sed -n '3,3 p' $usuario.txt`
	cuenta=`sed -n '4,4 p' $usuario.txt`
	saldo=`sed -n '5,5 p' $usuario.txt`
	echo "$usuario" > $usuario.txt
	echo "$pass" >> $usuario.txt
	echo "$tipo" >> $usuario.txt
	echo "$cuenta" >> $usuario.txt
	echo "$saldo" >> $usuario.txt
	echo "inactivo" >> $usuario.txt
	sleep 3
else
	echo "Contraseña incorrecta"
	sleep 3
fi

