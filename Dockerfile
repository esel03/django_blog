FROM python:3.13-slim
RUN apt-get update && apt-get install python3-pip -y && pip install --upgrade pip && pip install pipenv
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY . /usr/src/app/
EXPOSE 8000
RUN pip install --no-cache-dir -r requirements.txt
CMD ["chmod", "+x", "./start.sh"]