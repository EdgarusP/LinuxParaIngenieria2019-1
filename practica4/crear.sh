
clear
cd bancos/cuentas
touch $nocuenta.txt


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

echo "cuentas creadas: $nocuenta"

export nocuenta


