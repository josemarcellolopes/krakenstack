# Kraken Stack

![Tela](images/Kraken_Stack.png)

O **Kraken Stack** é uma solução para desenvolvimento e gerenciamento de pipelines de dados, baseada em Docker. **Este ambiente integra diversas tecnologias** voltadas para a orquestração, processamento, armazenamento e automação de fluxos de trabalho, permitindo uma infraestrutura flexível e escalável para projetos de ciência de dados, engenharia de dados e análise de informações.

## Qual a idéia do nome Kraken Stack

No contexto do projeto, o Kraken representa uma solução robusta e integrada para o desenvolvimento e gerenciamento de pipelines de dados. O nome foi inspirado na criatura mitológica Kraken, um monstro marinho gigante frequentemente associado a força, poder e controle sobre vastos territórios, como a solução usa Docker que é representado por uma baleia e seus containers por simbolos ligados ao mar, dai surgiu o nome.

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

## Tecnologias Utilizadas

O Kraken Stack utiliza as seguintes tecnologias para a execução dos serviços:

- **PostgreSQL** - Banco de dados relacional para Airflow e n8n
- **Redis** - Backend de mensagens para Airflow
- **Apache Airflow** - Orquestração de workflows
- **MySQL** - Banco de dados relacional
- **Briefer Cloud** - Análise de dados e relatórios
- **MinIO** - Armazenamento de objetos compatível com S3
- **Apache Spark** - Processamento distribuído de dados
- **Jupyter Notebook** - Ambiente interativo para análise de dados
- **n8n** - Automatização de fluxos de trabalho

## Credenciais Padrão

As seguintes credenciais são utilizadas no ambiente configurado pelo `docker-compose.yml`:

- **PostgreSQL (Airflow)**
  - Usuário: `airflow`
  - Senha: `airflow`
  - Banco de Dados: `airflow`

- **PostgreSQL (n8n)**
  - Usuário: `n8n`
  - Senha: `n8npassword`

- **MySQL**
  - Usuário root: `root`
  - Senha: `Suc3ss0!`

- **MinIO**
  - Usuário: `admin`
  - Senha: `Suc3ss0!`

- **Airflow Webserver**
  - Usuário: `admin`
  - Senha: `Suc3ss0!`

- **n8n**
  - Usuário: `admin`
  - Senha: `yourpassword`

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

## Serviços Disponíveis

O Kraken Stack contém diversos serviços, que podem ser acessados nas seguintes portas padrão:

- **Apache Airflow**: `http://localhost:8080`
- **MinIO Console**: `http://localhost:9090`
- **Jupyter Notebook**: `http://localhost:8888`
- **n8n**: `http://localhost:5678`
- **Briefer Cloud**: `http://localhost:3000`

Cada serviço pode ter configurações adicionais no `docker-compose.yml`, que podem ser personalizadas conforme necessário.
