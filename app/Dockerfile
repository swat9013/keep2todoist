FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN apt-get update --allow-insecure-repositories --allow-releaseinfo-change --allow-unauthenticated \
&& apt-get -y install gcc \
&& pip install --no-cache-dir --upgrade pip \
&& pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "./app.py"]