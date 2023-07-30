# Valorant
Descrição
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