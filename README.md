# Описание git_test
### Задачи проекта: ###  
  
➤ Упаковать приложение на Python в Docker контейнер.  
➤ Приложение протестировано в ОС Ubuntu 18.04  
➤ Файл requirements.txt поместить в контейнер /tmp/  
➤ Установить в контейнер Python (python-all, python-pip)  
➤ [RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip]  
➤ Установить зависимости из файла с requirements.txt в контейнере (pip install -qr requirements.txt)  
➤ Положить файлы с приложением в контейнер в /opt/webapp  
➤ Приложение должно работать на порту 5000  
➤ Точкой входа для интерпритатора Python должен служить файл "app.py" 
