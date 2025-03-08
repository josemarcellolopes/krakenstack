#!/bin/bash

clear

echo "Kraken Stack"
echo ""

echo "Repositório no GitHub: https://github.com/josemarcellolopes/krakenstack"
echo ""

echo "Escolha quais stacks deseja provisionar:"
echo ""

echo "1) Airflow"
echo "2) Briefer"
echo "3) Minio (S3)"
echo "4) MySQL"
echo "5) N8n"
echo "T) Todas Stacks"
echo ""
echo "0) Quit"

echo ""
read -p "Digite as opções desejadas (ex: 1 3): " input

echo ""

for option in $input; do
    case $option in
        1) echo "Airflow";;
        2) echo "Briefer";;
        3) echo "Minio (S3)";;
        4) echo "MySQL";;
        5) echo "N8n";;
        T) echo "Todas Stacks";;
        0) echo "Saindo..."; exit 0;;
        *) echo "Opção inválida: $option";;
    esac
done
