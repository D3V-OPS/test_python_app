FROM ubuntu:18.04

# Объявляем рабочую директорию
WORKDIR /opt/webapp/

# Объявляем порт
EXPOSE 5000

#Копируем содержимое requirements.txt во временную джиректорию
COPY requirements.txt /tmp/requirements.txt

#Ставим Python и зависимости
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip && \
    pip install -qr /tmp/requirements.txt

#Копируем содержимое в рабочую директорию
COPY . WORKDIR

# Объявляем команду для запуска контейнерв
CMD ["python", "WORKDIR/app.py"]