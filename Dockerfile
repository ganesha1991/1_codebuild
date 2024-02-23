
# FROM python:3.10-slim-buster
FROM 532048035650.dkr.ecr.us-east-1.amazonaws.com/gk-demo:latest

WORKDIR /src

COPY ./app/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./app .

CMD python app.py
