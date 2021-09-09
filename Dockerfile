# syntax=docker/dockerfile:1

FROM python:3
WORKDIR /sample-app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "-m" , "flask", "run"]
