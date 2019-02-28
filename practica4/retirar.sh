clear
echo "-- R E T I R O S --"
echo "-------------------"
echo "Cantidad a retirar: "
read cantDinero
cd bancos/cuentas/
saldo=`sed -n '5 p' $usuario.txt`
if [ "$saldo" -ge "$cantDinero" ]; then
	pass=`sed -n '2 p' $usuario.txt`
	tipo=`sed -n '3 p' $usuario.txt`
	cuenta=`sed -n '4 p' $usuario.txt`
	let cant=$saldo-$cantDinero
	echo "$usuario" > $usuario.txt
	echo "$pass" >> $usuario.txt
	echo "$tipo" >> $usuario.txt
	echo "$cuenta" >> $usuario.txt
	echo "$cant" >> $usuario.txt
	echo "activo" >> $usuario.txt
	echo "Su nuevo saldo es: $cant"
	sleep 2
	cd ../logs/
	echo "El usuario $usuario ha retirado $cantDinero" >> historial.txt
	if [ "$cantDinero" -ge 1000000 ]; then
		echo "El usuario $usuario ha retirado $cantDinero" >> historial.txt
	fi
else
	echo "Fondos Insuficientes."
	sleep 2
fi
cd ../../
