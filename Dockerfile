FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --trusted-host pypi.org --no-cache-dir -r requirements.txt

LABEL org.opencontainers.image.title="bitcoinblack-server"

COPY . .

ENTRYPOINT [ "python", "./blackcast.py" ]