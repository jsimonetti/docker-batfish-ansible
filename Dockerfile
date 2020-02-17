FROM batfish/batfish

COPY requirements.txt .

RUN apt update && apt -y upgrade && apt -y install python3-pip && apt clean all
RUN pip3 install -r requirements.txt
RUN ansible-galaxy install batfish.base


