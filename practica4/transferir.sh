clear
cd bancos/cuentas
echo "--T R A N S F E R E N C I A S--"
echo "-------------------------------"
echo "Dinero a transferir"
read cash
echo "Nombre usuario destino"
read cuenta

if[ -f $cuenta.txt ]; then
	saldoRemit=`sed -n '5 p' $usuario.txt`
	saldoDest=`sed -n '5 p' $cuenta.txt`
	if [ "$saldo" -ge "$cash" ]; then
		estadoDest=`sed -n '$p' $cuenta.txt`
		if [ "$estadoDest" = "activo" ]; then
			tipoRemit=`sed -n '3 p' $usuario.txt`
			tipoDest=`sed -n '3 p' $cuenta.txt`
			if [ "$tipoRemit" = "$tipoDest" ]; then
				let cantDest=$saldoDest+$cash
				let cantRemit=$saldo-$cash
				passRemit=`sed -n '2 p' $usuario.txt`
				nocuentaRemit=`sed -n '4 p' $usuario.txt`
				echo "$usuario" > $usuario.txt
				echo "$passRemit" >> $usuario.txt
				echo "$tipoRemit" >> $usuario.txt
				echo "$nocuentaRemit" >> $usuario.txt
				echo "$cantRemit" >> $usuario.txt
				echo "activo" >> $usuario.txt
				passDest=`sed -n '2 p' $cuenta.txt`
				tipoDest=`sed -n '3 p' $cuenta.txt`
				nocuentaDest=`sed -n '4 p' $cuenta.txt`
				echo "$cuenta" > $cuenta.txt
				echo "$passDest" >> $cuenta.txt
				echo "$tipoDest" >> $cuenta.txt
				echo "$nocuentaDest" >> $cuenta.txt
				echo "$cantDest" >> $cuenta.txt
				echo "activo" >> $cuenta.txt
				echo "Transferencia realizada con éxito."
				echo "Su nuevo saldo es: $cantRemit."
				cd ../logs/
				echo "El usuario $usuario ha transferido $cash a la cuenta del usuario $cuenta" >> historial.txt
				if [ $cash -ge 1000000 ]; then
					echo "El usuario $usuario ha transferido $cash a $cuenta" >> superior.txt
					sleep 1
				fi
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
else
	echo "La cuenta destino no existe"
	sleep 3
fi
cd ../..
