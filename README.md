# Valorant
 This repository contains an ETL (Extract, Transform, Load) project using the Valorant API

# Projeto Valorant DataLake
Descrição
Este projeto visa coletar dados da API do Valorant utilizando Python, processá-los usando Spark e fornecer um ambiente Jupyter Server para análise e visualização dos dados. A biblioteca requests é utilizada para fazer as chamadas à API do Valorant. Todo o ambiente é encapsulado em um Docker, o que facilita o deploy e o uso do projeto.

# Requisitos
- Docker
- Git
# Instalação
Clone este repositório em seu ambiente local:

´´´python
git clone https://github.com/username/projeto_valorant_datalake.git
cd projeto_valorant_datalake
Construa a imagem Docker com o seguinte comando:
´´´
´´´python
docker build -t valorant_datalake .
´´´