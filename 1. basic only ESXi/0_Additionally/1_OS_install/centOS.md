# CentOS
# [Download](https://www.centos.org/download/ )
## Установка ос выполнена в сегменте сети с выходом в интернет и DHCP серевером
Взависимости от разных задачь могут потребоваться разные дестрибутивы 

![image](https://user-images.githubusercontent.com/79700810/154103402-1f8fb434-7560-4956-8e48-100375c319e2.png)

При включении виртуальный машины выбираем install CentOS без проверки медиа

![image](https://user-images.githubusercontent.com/79700810/154103873-3f812449-269e-4ac0-87a6-defc381ce990.png)

Выбрать язык опирационный системы и раскладку

![image](https://user-images.githubusercontent.com/79700810/154104035-2ee151c3-e363-454e-80c0-accb58ff3217.png)

в разделе SYSTEM - > installation Detination

![image](https://user-images.githubusercontent.com/79700810/154104083-629893d8-bf0e-4ee3-b6eb-db9bcbda8b5c.png)

по умолчанию будет выбран первый диск на который будет установлена операционная система и на нем стоит отметка в левом верхнем углу выбираем Done

![image](https://user-images.githubusercontent.com/79700810/154104111-643f00f8-3960-4d30-b97d-3c0453acd7c3.png)

в разделе SYSTEM - > Network & Host Name
![image](https://user-images.githubusercontent.com/79700810/154104083-629893d8-bf0e-4ee3-b6eb-db9bcbda8b5c.png)

выбираем интерфейс и в правом углу переводим из off в on 
Важно: если в этом сегменте сети есть DHCP сервер иннтерфейс получит адрес по DHCP

![image](https://user-images.githubusercontent.com/79700810/154104396-adedeeb2-8e18-4a7c-af09-7de7aee191c4.png)

в разделе Software - > software selection
Важно: если в этом сегменти сети нету доступа в интернет выбрать необходимые пакеты для операционный системы можно только те которые в хотя в состав дистребутива

![image](https://user-images.githubusercontent.com/79700810/154104179-e88ef64a-1195-417a-92df-dd9a0c993940.png)

для минимального набора работы и быстрой установки выбираем Minnimal install - > guest agents и Standard

![image](https://user-images.githubusercontent.com/79700810/154104553-d585f307-ef25-413c-aeef-c37d0d5aa7ea.png)

в разделе USER SETINGS - > Root Password
![image](https://user-images.githubusercontent.com/79700810/154104627-a59b62ff-a2b3-4ebd-8700-6a285b44e9df.png)

указываем пароль если пароль не соотведстует критериям припто стойкости в левом верхнем углу нужно нажать два раза Done

![image](https://user-images.githubusercontent.com/79700810/154104925-69779d5b-851a-4f7f-a699-df0823217105.png)

в разделе USER SETINGS - > User Creation можно создать допалнительного пользователя без прав root

![image](https://user-images.githubusercontent.com/79700810/154104627-a59b62ff-a2b3-4ebd-8700-6a285b44e9df.png)

задаем имя и пароль в левом верхнем углу выбираем Done

![image](https://user-images.githubusercontent.com/79700810/154105020-daf330ea-4db7-4a53-a9bd-f042dcf705bb.png)

По оканчении установки необходимо перезагрузить операционную систему

![image](https://user-images.githubusercontent.com/79700810/154106729-41e16c2d-9ac5-4a39-bf6a-7b024860c822.png)
