FROM wichita/b1:v1 AS final

COPY spark-examples.jar  /opt/spark/jars/spark-on-eks.jar

COPY spark-examples.jar /opt/spark/jars

ENV SPARK_HOME /opt/spark

WORKDIR /opt/spark/work-dir

ENTRYPOINT [ "/opt/entrypoint.sh" ]
