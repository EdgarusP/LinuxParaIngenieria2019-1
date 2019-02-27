clear

cd bancos/logs
nocuenta=`cat cuentas.txt`
cd ../cuentas

echo "-- R E G I S T R O --"
echo "---------------------"
echo "Ingrese su nombre:"
read nombre
touch $nombre.txt
echo "$nombre" >> $nombre.txt
export nombre
echo "Ingrese su contraseña:"
read psw
echo "$psw" >> $nombre.txt

echo "Eliga su tipo de cuenta:"
echo "0- corriente"
echo "1- ahorros"
read tipo
echo "$tipo" >> $nombre.txt

echo "$nocuenta" >> $nombre.txt

echo "0" >> $nombre.txt

echo "activo" >> $nombre.txt

nocuenta=$(($nocuenta+1))
cd ../logs
echo "$nocuenta" > cuentas.txt
cd ../..
echo "¡Usuario creado con éxito!"
sleep 1
