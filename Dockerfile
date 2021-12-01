FROM alpine:3.12
# FROM alpine:edge

RUN apk add --no-cache py3-pip=20.1.1-r0
# RUN apk add --no-cache py3-pip

COPY ./app /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement ./requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]
