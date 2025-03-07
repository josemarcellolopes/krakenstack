#!/bin/bash

echo "Iniciando execução..."
echo ""

# Sobe os containers em background
docker-compose up -d

# Mensagem de conclusão
echo ""
echo "Execução concluída!"
