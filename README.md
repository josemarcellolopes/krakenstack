# Kraken Stack

![Tela](images/Kraken_Stack.png)

Este repositório contém o projeto **Kraken Stack**, cria um ambiente baseado em Docker para o desenvolvimento de pipelines de dados.

## Estrutura do Projeto

```
kraken/
├── docker/            # Configurações e arquivos relacionados ao Docker
├── images/            # Armazena imagens do projeto
├── notebooks/         # Jupyter Notebooks
├── menu.sh            # Script de menu interativo
├── notes.txt          # Anotações e informações do projeto
├── README.md          # Documentação do projeto
├── run.sh             # Script para iniciar a aplicação
└── stop.sh            # Script para parar a aplicação
```

## Pré-requisitos

- Docker e Docker Compose instalados
- Bash Shell (para executar os scripts `.sh`)
- Python (se utilizar os notebooks)

## Como Usar

### Inicialização

Para iniciar a aplicação:

```sh
./run.sh
```

### Parar a aplicação

```sh
./stop.sh
```

### Executar o menu interativo

```sh
./menu.sh
```

## Notebooks

Os notebooks Jupyter podem ser encontrados na pasta `notebooks/`. Certifique-se de que o ambiente Python necessário está configurado antes de executá-los.

## Docker

A pasta `docker/` contém arquivos de configuração para execução do projeto dentro de containers Docker. Certifique-se de que o Docker está instalado e rodando.
