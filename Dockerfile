FROM batfish/batfish

COPY requirements.txt .

RUN apt update && apt -y upgrade && apt -y install pip && apt clean all
RUN pip install -r requirements.txt
RUN ansible-galaxy install batfish.base


