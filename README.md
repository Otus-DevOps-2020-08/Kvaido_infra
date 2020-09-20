# Kvaido_infra
Kvaido Infra repository

-------------------------
## Homework#4
```
testapp_IP = 130.193.49.229
testapp_port = 9292
```

1. Создать нового инстанса руководствуясь материалами практикума.

2. Установить на инстанс Ruby, Bundler, MongoDB и произвести деплой приложения.

3. Команды по настройки системы и деплоя приложения были завернуты в bash скрипты
   - install_ruby.sh
   - install_mongodb.sh
   - deploy.sh

4. Был создан startup скрипт (metadata.yaml)

```
yc compute instance create --name reddit-app-2 --hostname reddit-app-2 --memory=4 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --metadata serial-port-enable=1 --metadata-from-file user-data=./metadata.yaml
```

-------------------------
## Homework#3
```
bastion_IP = 84.201.171.225
someinternalhost_IP = 10.128.0.28
```
1. Исследовать способ подключения к someinternalhost в одну
команду из вашего рабочего устройства

```
ssh -i ~/.ssh/appuser -J appuser@84.201.171.225 appuser@10.128.0.28
```

2. Предложить вариант решения для подключения из консоли при
помощи команды вида ssh someinternalhost из локальной
консоли рабочего устройства, чтобы подключение выполнялось по
алиасу someinternalhost.

На локальной машине в ~/.ssh/config (при необходимости создать файл) добавить

```
host bastion
user appuser
port 22
hostname 84.201.171.225

host someinternalhost
user appuser
port 22
hostname 10.128.0.28
proxyjump bastion
```

Для подключения выполнить команду
```
ssh someinternalhost
```

3. На ВМ установлен vpn-сервер Pritunl и настроено  подключение

4. Добавлен сертификат Let's Encrypt
https://pritunl.kvaido.com/

-------------------------
