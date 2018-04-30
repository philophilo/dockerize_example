FROM ubuntu:16.04

MAINTAINER philophilo
RUN apt-get update -y && \
        apt-get install -y software-properties-common && \
        add-apt-repository ppa:jonathonf/python-3.6 && \
        apt-get install -y python3-pip python3-dev && \
        apt-get install -y --no-install-recommends apt-utils && \
        pip3 install virtualenv && \
        mkdir app
COPY requirements.txt /app/
RUN virtualenv venv && \
    . venv/bin/activate && \
    pip3 install -r /app/requirements.txt
WORKDIR /app
COPY . /app
# ENTRYPOINT [ "python" ]
# CMD [ "app.py" ]
CMD ["/bin/bash"]
