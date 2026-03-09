FROM python:3.9-alpine

LABEL maintainer="SteliosSyn"
LABEL project="Docker_Scanner"

WORKDIR /app

# installing system dependencies
RUN apk add --no-cache \
    curl \
    openssl

# create simple scanner script
RUN echo 'print("docker scanner by SteliosSyn emena dhladi")' > scanner.py

CMD ["python", "scanner.py"]