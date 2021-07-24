# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
WORKDIR /app
RUN pip install Flask
COPY app.py /app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
