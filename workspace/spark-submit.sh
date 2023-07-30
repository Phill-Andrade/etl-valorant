JOBNAME=$1

docker build -t spark -f docker/spark.Dockerfile .

docker run --rm -v "/$(pwd):/home/ubuntu/repos/Valorant" spark spark-submit --master local[*] jobs/${JOBNAME}.py