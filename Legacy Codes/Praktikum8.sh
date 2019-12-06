declare -a namamhsw
declare -a npmmhsw
menu1(){
 echo -n "masukkan jumlah mahasiswa : "
   read jml
    for ((i=0; i<$jml; i++)) do
        echo -n $(( $i + 1))". nama mahasiswa: "
        read nama
        namamhsw[$i]=$nama
        echo -n " NPM :  "
        read npm

        npmmhsw[$i]=$npm
    done

}
menu2(){
  echo  "Nama dan NPM "
   for ((i=0; i<$jml; i++)) do
        echo  $(( $i + 1))". Nama : ${namamhsw[$i]}"
        echo  " NPM  : ${npmmhsw[$i]}"
        echo ""
    done

}
menu3(){
echo -n "masukkan urutan user yang akan diganti :"
    read urutan
    echo -n "nama : "
    read nama
    echo -n "NPM : "
    read npm
    namamhsw[$urutan-1]=$nama
    npmmhsw[$urutan-1]=$npm

}
while :; do
clear

echo "Program Data Mahasiswa"
echo "1. Input data Mahasiswa"
echo "2. View data Mahasiswa"
echo "3. Update data Mahasiswa"
echo "4. Keluar program"

read pilih

if [ $pilih == 1 ]
then
    clear
               menu1
  fi

if [ $pilih == 2 ]
then
    clear
               menu2
     read
fi

if [ $pilih == 3 ]
    then
                menu3
    clear
    read    
fi

if [ $pilih == 4 ]
then
    exit
fi
done

