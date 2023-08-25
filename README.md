# Valorant

## Índice

1. [Descrição](#descrição)
2. [Requisitos](#requisitos)
3. [Executando jobs](#executando-jobs)
4. [Notebook](#notebook)

## Descrição

Este projeto visa coletar dados da API do Valorant utilizando Python, processá-los usando Spark e fornecer um ambiente Jupyter Server para análise e visualização dos dados. A biblioteca requests é utilizada para fazer as chamadas à API do Valorant. Todo o ambiente é encapsulado em um Docker, o que facilita o deploy e o uso do projeto.

```
Valorant/
├── docker/
│   ├── jupyterlab.Dockerfile   # script para a geração da imagem jupyterlab
│   └── spark.Dockerfile        # script para a geração da imagem spark
├── requirements.txt
├── jobs/                       # diretorio dos scripts de ingestão de dados
│   ├── job1.py
│   ├── job2.py
│   └── job3.py
├── workspace/
│   ├── jupyterlab.sh              # bash que executa o Dockerfile jupyterlab
│   └── spark-submit.sh         # bash que executa o Dockerfile spark
├── README.md
└── requirements.txt
```

## Requisitos
- Docker
- Git

## Executando jobs
Para executar qualquer script `.py`, basta chamar o bash passando o caminho do spark.sh e o nome do script a ser executado

```sh
bash workspace/spark.sh job1
```

## Notebook
Para abrir o jupyter server execute o seguinte comando:

```sh
bash workspace/jupyterlab.sh
```

ao terminar de executar, no terminal estará presente o url do host local, segurando o CTRL e clicando no url o jupyter vai abrir no seu navegador.

## Estrutura

- Camada Raw: A camada raw é a primeira etapa de armazenamento de dados no Delta Lake. Nesta camada, os dados brutos recém-ingeridos são mantidos em sua forma original, sem nenhuma modificação significativa.

- Camada Bronze: Nesta camada, os dados brutos da camada bruta são processados ​​e limpos para prepará-los para análises futuras. É a primeira etapa de transformação dos dados.

- Camada Prata: A camada prata é onde ocorrem transformações mais complexas e a modelagem de dados começa a ser elaborada. Os dados são preparados para consultas eficientes e análises mais aprofundadas.

- Camada Ouro: A camada gold contém os dados prontos para análises finais e geração de relatórios. Os dados estão otimizados para consultas de alto desempenho.