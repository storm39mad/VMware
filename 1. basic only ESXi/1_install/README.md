# ВВЕДЕНИЕ

Это первая лабораторная работа от  VMware vSphere: установка, настройка, управление — лабораторное руководство . Установлю гипервизор ESXi с нуля.

Все лабораторные работы могут быть выполнены с использованием вложенной виртуализации или реального оборудования

# Цель
1) Регистрация на аккауна my VMware
2) Скачивание дестребутива 
3) Установка ESXi 

## ДО УСТНОВКИ:

Убедитесь будет ли ваше оборудование поддерживать ESXi это необходима для того что бы корректно работали драйверы и была возможность для обращения за поддержкой на сайт VMware
https://www.vmware.com/resources/compatibility/search.php

Также будет необходим дистрибутив VMware vSphere Hypervisor (ESXi ISO) image

пробную версию можно получить на сайте VMware

https://customerconnect.vmware.com/dashboard

![image](https://user-images.githubusercontent.com/79700810/154010307-a2e7889c-56c1-43a3-b98f-7c510fee34f8.png)

Выбираем раздел VMware vSphere -> Download Free Trial

![image](https://user-images.githubusercontent.com/79700810/154010407-4968565b-58d3-4696-90a0-65c85bfffc40.png)

Заполняем все поля в форме и получаем доступ к скачиванию 

![image](https://user-images.githubusercontent.com/79700810/154010574-73024c20-32eb-44f7-86ca-ab6c696ee2e8.png)

##№ VMware vSphere Documentation

Ознакомтесь с базовой документацие на сайте https://docs.vmware.com/en/VMware-vSphere/index.html

![image](https://user-images.githubusercontent.com/79700810/154010838-1d78e37d-09a3-40e7-9245-2b31e57523fb.png)

также в разделе VMware vSphere 7.0 Release Notes вы можете ознакомится с Before You Begin

## Установка

Записываете ISO файл на поситель или подгружаете на сервер через удаленный менеджмент connect virtual media


Вам будет предложенно проверить характеристики своего сервера на совместимость что является очень важным шагом так как в некоторых случаях может понадобиться собирать не авторизованной бандел для совместимости и корректной работы всех компонентов

![image](https://user-images.githubusercontent.com/79700810/154012682-db0bca4f-8c46-4520-9738-82d22727c944.png)


Вам предлагают ознакомится с лицензионным соглашением компании VMware

![image](https://user-images.githubusercontent.com/79700810/154012762-79b3928e-e36a-416a-b62c-f794a06a3194.png)


Начнется этап сканирования доступных девайсов для установки VMware ESXi

![image](https://user-images.githubusercontent.com/79700810/154012834-502a4d39-ddda-4bf1-942d-01a4c79d66d9.png)


На сегодняшней день компания VMware поддерживает огромное количество способов установки дистребутива на разные носители

![image](https://user-images.githubusercontent.com/79700810/154013397-908c9933-7fb4-428d-bda2-d9b24e45e72b.png)

предлагается выбор раскладки для ввода с клавиатуры

![image](https://user-images.githubusercontent.com/79700810/154013467-911e7085-e601-47bc-b54a-bd563f1c03f7.png)

Необходимо указать пароль от пользователя root он должен быть крипто стойкий и отвечать требованием безопасности

Пароли ESXi
ESXi применяет требования к паролю для доступа из прямого пользовательского интерфейса консоли, оболочки ESXi, SSH или клиента хоста VMware .

По умолчанию при создании пароля вы должны включать сочетание символов из четырех классов символов: строчные буквы, прописные буквы, цифры и специальные символы, такие как подчеркивание или тире.
По умолчанию длина пароля больше 7 и меньше 40.
Пароли не могут содержать словарное слово или часть словарного слова.

![image](https://user-images.githubusercontent.com/79700810/154013631-78b4f6a4-4b57-428b-aed5-5bc4ea0194fd.png)

Вы можете вернуться к предыдущем шагам что бы убедиться в достоверности или продолжить процесс установки

![image](https://user-images.githubusercontent.com/79700810/154013700-9612b25a-16b1-4203-a862-157ccba47652.png)

Процесс установки занимает несколько минут и зависит от скорости носителя на который идет установка

![image](https://user-images.githubusercontent.com/79700810/154013819-8f71d487-1397-426b-b68c-ae064a2726d6.png)

После процесса установки необходимо совершить перезагрузку

![image](https://user-images.githubusercontent.com/79700810/154013932-862b15ba-56d3-42f2-a989-39c267b897d6.png)

После загрузки вы увидите желто серый экран DCUI — Direct Console User Interface

![image](https://user-images.githubusercontent.com/79700810/154025506-15b402bd-2daf-452f-bc0d-19422776a02c.png)
