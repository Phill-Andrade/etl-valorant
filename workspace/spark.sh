docker build -t spark-image -f docker/spark.Dockerfile .

docker run -it --rm -v "/$(pwd):/home/ubuntu/repos/Valorant" spark-image