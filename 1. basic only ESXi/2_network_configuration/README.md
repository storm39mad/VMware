# ВВЕДЕНИЕ

В этом раздели мы произведем базовую настройку сети управления ESXi хостом и подключемся к Веб интерфейсу
# Цель

1) Назначение статического ip адреса
2) Подключение к Веб интерфейсу

## Базовая настройка сети

После установки ESXi если в вашем сегменти сети нет сервера DHCP необходимо назначить статический адрес на интерфейс через консоль управления DCUI
При нажатии F2 вас попросят ввести пароль от учетной записи root, который был задан при установки 

![image](https://user-images.githubusercontent.com/79700810/154033618-4b56789d-72c9-42f6-950c-47fc60a09b90.png)

Переходим на вкладку Configure Managent Network

![image](https://user-images.githubusercontent.com/79700810/154034355-9478c9b6-29d5-473d-a4b2-ee5450508cf2.png)

В IPv4 Configuration - > Set static IPv4

Важно: В этом сегменте сети должен быть ваш клиентский компьютер с которого будет осущевтляться управление хостом или иметь доступ в этот сигмент

![image](https://user-images.githubusercontent.com/79700810/154035757-c6ee94fd-234f-4402-a635-2fea9fffa20f.png)

Также в IPv6 Configuration вы можете отключить протокол 

![image](https://user-images.githubusercontent.com/79700810/154036773-93c40a73-bf77-47a5-98d4-3afc01f1adee.png)

При нажатии на ESC для применения конфигурации и отключения IPv6 необходимо осощуствить перезагрузку 

![image](https://user-images.githubusercontent.com/79700810/154036913-ee617b27-d89a-4d16-a85c-35c7ed14afc6.png)

после перезагрузки хост отобразит информацию для подключения

![image](https://user-images.githubusercontent.com/79700810/154037638-be739b1a-fc4e-4f27-9625-3dc72084c79e.png)

## Подключение к Веб интерфейсу

В браузере указываем ip адрес хоста для подключения 

![image](https://user-images.githubusercontent.com/79700810/154049955-d6b761b2-a7ca-4faf-bb03-3fcf2da76929.png)


Переходим на сайт и игнорируем не доверие к сертификату указываем учетную запись root и пароль при установки

![image](https://user-images.githubusercontent.com/79700810/154050110-feb0e8bf-8b2b-4739-96c8-63a8cbc8de41.png)

Попадаем в веб интерфейс управление хостом 

![image](https://user-images.githubusercontent.com/79700810/154050241-49a1b2dd-714c-42a2-b309-ce5bfa29219f.png)
