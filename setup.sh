#!/bin/bash

mkdir -p aprtools
mkdir -p ARJA
mkdir -p Cardumen
mkdir -p kGenProg
mkdir -p jKali
mkdir -p Nopol
mkdir -p jMutRepair
mkdir -p SimFix

cd ../src
jenv local 1.7
mkdir -p bin
javac -cp $(cat /config/path.txt): -d bin $(find src/xxl -name '*.java')

for apt in "$@"
do

    case $apr in 
    "ARJA")
        cd ARJA
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "Cardumen")
        cd Cardumen
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "kGenProg")
        cd kGenProg
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "jKali")
        cd jKali
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "Nopol")
        cd Nopol
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "jMutRepair")
        cd jMutRepair
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;
    "SimFix")
        cd SimFix
        jenv local 1.7
        mkdir -p bin
        javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')
        cd ..
        echo "$user setup..."
    ;;

done


jenv local 1.7
javac -cp "lib/*": -d bin $(find src/xxl -name '*.java')

