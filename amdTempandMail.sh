for (( ; ; ))
do
sleep 3600 
read a b c <<<$(inxi -s | grep -Eo "[0-9.]+" | tr '\n' ' ')
echo "RX570: $b" | mutt -s "RX570 temp" exampleemail@gmail.com
done


