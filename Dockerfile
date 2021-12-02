FROM alpine:3.10

RUN apk add --no-cache python3=3.7.10-r0
# RUN python3 -m pip install --upgrade pip

COPY ./app /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement ./requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]
