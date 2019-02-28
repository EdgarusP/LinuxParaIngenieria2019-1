clear
echo "-- C O N S I G N A C I O N --"
echo "Cuanto dinero quiere ingresar:"
read monto
cd bancos/cuentas/

pass=`sed -n '2,2 p' $usuario.txt`
tipo=`sed -n '3,3 p' $usuario.txt`
cuenta=`sed -n '4,4 p' $usuario.txt`
saldo=`sed -n '5,5 p' $usuario.txt`
saldo=$(($saldo+$monto))

echo "$usuario" > $usuario.txt
echo "$pass" >> $usuario.txt
echo "$tipo" >> $usuario.txt
echo "$cuenta" >> $usuario.txt
echo "$saldo" >> $usuario.txt
echo "activo" >> $usuario.txt
echo "Consignación realizada con éxito."
sleep 3
cd ../logs/
echo "El usuario $usuario ha consignado $monto" >> historial.txt

if [ "$monto" -ge 1000000 ]; then
	echo "El usuario $usuario ha consignado $monto" >> superior.txt
	sleep 1
fi

cd ../..
