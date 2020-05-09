FROM python:3.8-alpine
MAINTAINER Oyshik Moitra

ENV PYTHONUNBUFFERED 1

RUN adduser -D user && mkdir /app && chown -R user:user /app



# ENV PATH /home/user/.local/bin:$PATH
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

USER user

WORKDIR /app
COPY ./app /app