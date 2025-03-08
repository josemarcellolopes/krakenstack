#!/bin/bash

echo "Finalizando execução..."
echo ""

# Para os serviços dos containers em background
cd docker
docker-compose down
cd ..

# Mensagem de conclusão
echo 
echo "Concluído!"
