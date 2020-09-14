# Kvaido_infra
Kvaido Infra repository

-------------------------
## Homework#3

bastion_IP = 84.201.171.225
someinternalhost_IP = 10.128.0.28

1. Исследовать способ подключения к someinternalhost в одну
команду из вашего рабочего устройства

,,,
ssh -i ~/.ssh/appuser -J appuser@84.201.171.225 appuser@10.128.0.28
,,,

2. Предложить вариант решения для подключения из консоли при
помощи команды вида ssh someinternalhost из локальной
консоли рабочего устройства, чтобы подключение выполнялось по
алиасу someinternalhost.

На локальной машине в ~/.ssh/config (при необходимости создать файл) добавить

,,,
host bastion
user appuser
port 22
hostname 84.201.171.225

host someinternalhost
user appuser
port 22
hostname 10.128.0.28
proxyjump bastion
,,,

Для подключения выполнить команду
,,,
ssh someinternalhost
,,,

3. На ВМ установлен vpn-сервер Pritunl и настроено  подключение

4. Добавлен сертификат Let's Encrypt
https://pritunl.kvaido.com/

-------------------------
