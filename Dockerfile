FROM python:3.9-alpine

LABEL maintainer="SteliosSyn"
LABEL project="Docker_Scanner"

WORKDIR /app

# installing system dependencies
RUN apk add --no-cache \
    curl \
    openssl

# installing python packages with known vulnerabilities
RUN pip install --no-cache-dir \
    flask==2.0.1 \
    requests==2.25.1 \
    pyyaml==5.3.1 \
    urllib3==1.26.5 \
    pillow==8.3.1

# create simple scanner script
RUN echo 'print("docker scanner by SteliosSyn emena dhladi")' > scanner.py

CMD ["python", "scanner.py"]