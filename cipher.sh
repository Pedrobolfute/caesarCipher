#!/bin/bash
arrayABC=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" ".")
arrayPass=()
arrayNewPass=()
qt=14
wordToCipher="pedrobolfute"

for ((i=0; i<${#wordToCipher}; i++))
  do
    arrayPass+=("${wordToCipher:i:1}")
  done

for i in ${!arrayPass[@]}
  do
    for j in ${!arrayABC[@]}
    do
      if [[ ${arrayPass[$i]} == ${arrayABC[$j]} ]];
      then
        arrayNewPass[$i]=${arrayABC[$j-$qt]}
      fi
    done
  done
  
  echo -n "Cipher: "
  for i in ${arrayNewPass[@]}
    do
      echo -n $i
    done
  echo -e "\nFinalizado!"