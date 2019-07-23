FROM ubuntu:18.04

ENV PATH usr/local/bin:$PATH

RUN apt update -y && \
    apt install -y python3.6 python3-setuptools python3-pip
COPY . /openquake
RUN pip3 install -r /openquake/requirements-py36-linux64.txt -r /openquake/requirements-extra-py36-linux64.txt && \
    pip3 install -e /openquake/[dev]

RUN useradd -ms /bin/bash openquake
USER openquake
ENV LANG en_US.UTF-8
ENV HOME /home/openquake
WORKDIR ${HOME}

EXPOSE 8800:8800
CMD ["/openquake/bin/start.sh"]
