FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/specialless/specialless/ /root/packages/specialless/
WORKDIR /root/packages/specialless
RUN pip3 install /root/packages/specialless

CMD ["python3","test/specialless.py"]


