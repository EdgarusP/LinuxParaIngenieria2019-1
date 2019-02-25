clear

cd bancos/logs
nocuenta=`cat cuentas.txt`
cd ../cuentas

echo "Sistema de registro al sisitema"

echo "Por favor ingrese su nombre:"
read nombre
touch $nombre.txt
echo "$nombre" >> $nombre.txt

echo "Ingrese su contraseña:"
read pass
echo "$pass" >> $nombre.txt

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
