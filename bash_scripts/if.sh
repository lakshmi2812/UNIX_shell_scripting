#if statement practice code

str=''
echo -n "Enter your name: "
read str

if [[ $str != ''  ]]
then
    echo "Hello, $str"
fi
