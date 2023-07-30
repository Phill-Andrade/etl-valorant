from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()

print(spark)

print('A' * 100)
