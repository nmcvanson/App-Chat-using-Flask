FROM ubuntu
RUN apt update
RUN apt install -y python3 screen
RUN apt install -y python3-pip
RUN pip3 install flask
RUN pip3 install kafka-python
RUN pip3 install pymongo
WORKDIR /home/lab2
#ENTRYPOINT ["python3", "home.py"]
ENTRYPOINT screen -dmS site1 python3 action_server.py; screen -dmS site2 python3 home.py ; sleep 100000