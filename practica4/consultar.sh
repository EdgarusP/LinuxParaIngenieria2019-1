clear

cd bancos/cuentas
saldo=$(sed -n 5'p' $usuario.txt)
export saldo
echo "-- C O N S U L T A --"
echo "---------------------"
echo "Saldo Disponible: $saldo"
cd ../..
sleep 4
