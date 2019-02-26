clear
echo "-- R E T I R O S --"
echo "-------------------"
echo "Cantidad a retirar: "
read cantDinero
cd bancos/cuentas
cant=`expr $saldo-$cantDinero`
$(sed -i "4d" $nombre.txt)
$(sed "4i\$cant" $nombre.txt)

