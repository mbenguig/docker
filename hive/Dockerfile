FROM activeeon/yarn:latest

########  HIVE ########


ENV HIVE_VER 2.3.9

RUN wget -O apache-hive.tar.gz https://archive.apache.org/dist/hive/hive-$HIVE_VER/apache-hive-$HIVE_VER-bin.tar.gz && \
tar -xzf apache-hive.tar.gz -C /usr/local/ && rm apache-hive.tar.gz

RUN ln -s /usr/local/apache-hive-$HIVE_VER-bin /usr/local/hive

ENV HIVE_HOME /usr/local/hive
ENV PATH $PATH:$HIVE_HOME/bin

ADD hive-site.xml $HIVE_HOME/conf


########  MYSQL CONNECTOR ########


#ADD mysql-connector-java-5.1.44-bin.jar $HIVE_HOME/lib
RUN wget -P $HIVE_HOME/lib/ https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.30/mysql-connector-java-8.0.30.jar

########  APPLICATION ########


ADD employee.csv $HIVE_HOME/
ADD hive_sql.hql $HIVE_HOME/

WORKDIR $HIVE_HOME

CMD ["/bin/bash"]