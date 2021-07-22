# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
#RUN mkdir /usr/src/app
WORKDIR /app
RUN pip install Flask
COPY app.py /app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
