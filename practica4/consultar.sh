clear

cd bancos/cuentas
saldo=$(sed -n 4'p' $nombre.txt)
export saldo
echo "-- C O N S U L T A --"
echo "---------------------"
echo "Saldo Disponible: $saldo"
cd ..
cd ..
