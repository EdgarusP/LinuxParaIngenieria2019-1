clear
cd bancos/logs
nocuenta=`cat cuentas.txt`
cd ../cuentas
touch $nocuenta.txt
echo $nocuenta


echo "Bienvenido, Porfavor ingrese su nombre:"

read nombre
echo "$nombre" >> $nocuenta.txt

echo "ingrese su contraseña:"
read pass
echo "$pass" >>$nocuenta.txt

echo "eliga su tipo de cuenta:"
echo "0- corriente"
echo "1- ahorros"
read opcion
echo "$opcion" >> $nocuenta.txt
echo "activo" >> $nocuenta.txt
echo "$nocuenta"
nocuenta=$(($nocuenta+1))
echo "$nocuenta"
cd ../logs
sed '!d' cuentas.txt > cuentas.txt
echo "$nocuenta" >> cuentas.txt

#echo"cuentas creadas: $nocuenta"
