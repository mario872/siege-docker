# syntax=docker/dockerfile:1

FROM python:3.11-slim-bullseye
LABEL maintainer="jamesaglynn10@gmail.com"
LABEL version="1.0"
LABEL description="A docker image that functions purely as a catchall web server to display a system error page."

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /home/siege-docker/

COPY static /home/siege-docker/static
COPY templates /home/siege-docker/templates
COPY main.py /home/siege-docker/main.py
COPY requirements.txt /home/siege-docker/requirements.txt

RUN python3 -m pip install --upgrade -r /home/siege-docker/requirements.txt

EXPOSE 80 443

CMD [ "python3", "/home/siege-docker/main.py"]