clear
cd bancos/cuentas
echo "--T R A N S F E R E N C I A S--"
echo "-------------------------------"
echo "Dinero a transferir"
read cash
echo "Nombre usuario destino"
read cuenta
saldo=`sed -n '5 p' $usuario.txt`
saldoDest=`sed -n '5 p' $cuenta.txt`
estadoDest=`sed -n '$p' $cuenta.txt`
tipoRemit=`sed -n '3 p' $usuario.txt`
tipoDest=`sed -n '3 p' $cuenta.txt`
if [ "$saldo" -ge "$cash" ]; then
	if [ "$estadoDest" = "activo" ]; then
		if [ "$tipoRemit" = "$tipoDest" ]; then
			let cantDest=$saldoDest+$cash
			let cantRemit=$saldo-$cash
			pass=`sed -n '2 p' $usuario.txt`
			tipo=`sed -n '3 p' $usuario.txt`
			nocuenta=`sed -n '4 p' $usuario.txt`
			echo "$usuario" > $usuario.txt
			echo "$pass" >> $usuario.txt
			echo "$tipo" >> $usuario.txt
			echo "$nocuenta" >> $usuario.txt
			echo "$cantRemit" >> $usuario.txt
			echo "activo" >> $usuario.txt
			pass_=`sed -n '2 p' $cuenta.txt`
			tipo_=`sed -n '3 p' $cuenta.txt`
			nocuenta_=`sed -n '4 p' $cuenta.txt`
			echo "$cuenta" > $cuenta.txt
			echo "$pass_" >> $cuenta.txt
			echo "$tipo_" >> $cuenta.txt
			echo "$nocuenta_" >> $cuenta.txt
			echo "$cantDest" >> $cuenta.txt
			echo "activo" >> $cuenta.txt
			echo "Transferencia realizada con éxito."
			echo "Su nuevo saldo es: $cantRemit."
			sleep 3
		else
			echo "Las cuentas no son del mismo tipo (Ahorro/Corriente)"
			sleep 3
		fi
	else
		echo "La cuenta destino se encuentra inactiva."
		sleep 3
	fi
else
	echo "Fondos insuficientes."
	sleep 3
fi
cd ../logs/
if [ $cash -ge 1000000 ]; then
	echo "El usuario $usuario ha transferido $cash a $cuenta" >> superior.txt
	sleep 1
fi

cd ../..
