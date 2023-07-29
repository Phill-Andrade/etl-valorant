 docker build -t jupyter-images -f docker/jupyterlab.Dockerfile .

 docker run -it --rm -p 8888:8888 -v "/$(pwd):/home/jovyan/repos/Valorant" jupyter-images