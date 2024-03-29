#FROM shakida69/mlx:amd64_ubantu
FROM ghcr.io/biswajyotiray/mlx:amd64_ubantu

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

#ENV PYTHONPATH="/usr/local/lib/python3.11/site-packages"
#RUN python -c "import sys; print(sys.path)"

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
