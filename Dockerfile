#FROM shakida69/mlx:heroku-bypass
FROM ghcr.io/biswajyotiray/mlx:amd64_alpine

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
