#!/bin/bash

echo "Iniciando execução..."
echo ""

# Sobe os containers em background
cd docker
docker-compose up -d

# Mensagem de conclusão
echo ""
echo "Execução concluída!"
