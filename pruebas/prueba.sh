user=`sed -n '1,1 p' hola.txt`
pass=`sed -n '3,3 p' hola.txt`
read us
read pas
echo $user
echo $pass
echo $us
echo $pas
if [ $user = $us -a $pass = $pas ]; then
  echo "Conincide"
else
  echo "error"
fi
