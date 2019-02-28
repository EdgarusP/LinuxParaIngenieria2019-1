clear
echo "-- D E S A C T I V A R --"
echo "ingrese su nombre de usuario: "
read user

echo "ingrese su contraseña: "
read pwd

cd bancos/cuentas
tail -n 1 "$fichero" | wc -c | xargs -I {} truncate "$fichero" -s -{}
echo "inactivo" >> $fichero
cd ../../
