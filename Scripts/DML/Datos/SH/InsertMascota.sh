line=""
getField(){
	echo "$line" | cut -f${1}
}

echo "INSERT ALL"
while read line
do
MASCOTA_id=$(getField 1)
TIPO=$(getField 2)
cat <<- EOF
into MASCOTA
(MASCOTA_id, TIPO)
values
($MASCOTA_id, '$TIPO')
EOF
done
echo "SELECT 1 from DUAL;"
