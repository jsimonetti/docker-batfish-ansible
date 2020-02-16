FROM batfish/batfish

RUN apt update && apt -y upgrade && apt -y install ansible && apt clean all
RUN ansible-galaxy install batfish.base


