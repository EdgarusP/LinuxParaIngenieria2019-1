
clear

echo "Bienvenido, Porfavor ingrese su nombre:"
read nombre
echo "ingrese su contraseña:"
read contrasena
echo "eliga su tipo de cuenta:"
echo "0- corriente"
echo "1- ahorros"
read opcion

let "nocuenta=nocuenta+1"

echo "cuentas creadas: $nocuenta"
