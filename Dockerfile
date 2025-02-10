FROM python:3.12-alpine

WORKDIR /flask_project1

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./flask_project1/requirements.txt /flask_project1/requirements.txt
RUN pip install -r requirements.txt

COPY ./flask_project1 /flask_project1
