clear
cd bancos/cuentas/
echo "-- R E S T A U R A C I Ó N --"
echo "-----------------------------"
echo "Contraseña Actual"
read actualPass
pass=`sed -n '2 p' $usuario.txt`
if [ "$actualPass" = "$pass" ]; then
	echo "Contraseña Nueva"
	read newpass
	tipo=`sed -n '3 p' $usuario.txt`
	cuenta=`sed -n '4 p' $usuario.txt`
	saldo=`sed -n '5 p' $usuario.txt`
	echo "$usuario" > $usuario.txt
	echo "$newpass" >> $usuario.txt
	echo "$tipo" >> $usuario.txt
	echo "$cuenta" >> $usuario.txt
	echo "$saldo" >> $usuario.txt
	echo "activo" >> $usuario.txt
	echo "Contraseña actualizada con éxito."
	sleep 3
else
	echo "Verifique su contraseña."
	sleep 3
fi
