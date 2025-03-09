#!/bin/bash

clear

echo "Kraken Stack"
echo ""
echo "Repositório no GitHub: https://github.com/josemarcellolopes/krakenstack"
echo ""
echo "Escolha quais stacks deseja provisionar:"
echo ""
echo "1) Briefer"
echo "2) MySQL"
echo "3) Airflow"
echo "4) N8n"
echo "5) Delta Lake"
echo "6) MinIO (S3)"
echo "7) Todas Stacks"
echo ""
echo "0) Sair e/ou baixar todas as stacks"
echo ""

read -p "Digite as opções desejadas separadas por espaço (ex: 1 3): " input

echo ""

for option in $input; do
    case $option in
        1) echo "Iniciando Briefer..."; 
                echo ""
                docker-compose -f docker/docker-compose-briefer.yml up -d ;;

        2) echo "Iniciando MySQL..."; 
                echo ""
                docker-compose -f docker-compose-mysql.yml up -d ;;

        3) echo "Iniciando Airflow..."; 
                echo ""
                docker-compose -f docker/docker-compose-airflow.yml up -d ;;

        4) echo "Iniciando N8n..."; 
                echo ""
                docker-compose -f docker/docker-compose-n8n.yml up -d ;;

        5) echo "Iniciando Delta Lake..."; 
                echo ""
                docker-compose -f docker/docker-compose-deltaio.yml up -d ;;

        6) echo "Iniciando MinIO (S3)..."; 
                echo ""
                docker-compose -f docker/docker-compose-minio.yml up -d ;;

        7) echo "Iniciando todas as stacks...";
                echo ""
                docker-compose -f docker/docker-compose-briefer.yml -f docker/docker-compose-mysql.yml -f docker/docker-compose-airflow.yml -f docker/docker-compose-n8n.yml -f docker/docker-compose-deltaio.yml -f docker/docker-compose-minio.yml up -d ;;

        0) echo "Saindo..."; 
                echo ""
                cd docker
                docker-compose down
                cd ..
                exit 0;;

        *) echo "Opção inválida: $option";;
    esac
done
