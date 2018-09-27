FROM ubuntu
RUN apt-get update && apt-get install unzip && apt-get install nano && apt-get -y install sudo && apt-get -y install iputils-ping && apt-get -y install telnet
COPY ./mongodb-linux-x86_64-ubuntu1604-3.6.8.tgz /
WORKDIR /
RUN tar -xvf mongodb-linux-x86_64-ubuntu1604-3.6.8.tgz && ln -sf mongodb-linux-x86_64-ubuntu1604-3.6.8 mongodb36
RUN mkdir mongodb36/data1 && mkdir mongodb36/data2 && mkdir mongodb36/data3
RUN mkdir mongodb36/logs1 && mkdir mongodb36/logs2 && mkdir mongodb36/logs3
COPY ./mongodb36_1.service ./mongodb36_2.service ./mongodb36_3.service /etc/systemd/system/
