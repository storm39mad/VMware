# ВВЕДЕНИЕ
В данном разделе мы настроем пропусканеи трафика для vSwitch0 созданного ESXi при установки, также созададим изолированный Стандарт свитч и порт группу для подключения к виртуальным машинам

# Цель
1) Настройка vSwitch
2) Создание Стандарт свитч
3) Создание порт группы

## Виртуальная сеть

Стандартный коммутатор обеспечивает подключения виртуальных машин для взаимодействия друг с другом, независимо от того, находятся ли они на одном узле или на разных узлах.

![image](https://user-images.githubusercontent.com/79700810/154052177-be785df5-c3b9-438f-af5f-c5816b57c832.png)

Переходим в Networking - > virtual swiches - > vSwitch0

Первый интерфейс vmkernel — vmk0 создается при установке ESXi. Этот интерфейс является интерфейсом управления хостом ESXi. VMware позволяет создать максимум 256 (vmk0 - vmk255) интерфейсов vmkernel на хосте ESXi

![image](https://user-images.githubusercontent.com/79700810/154057897-f94bcdd1-2843-4ff9-b846-fdf3e9964345.png)

далее в edit settings - > Security - > Accept

|Option   | Description    |
| - |-    |
| Promiscuous mode  |  Виртуальный коммутатор пересылает все кадры на виртуальную машину в соответствии с активной политикой VLAN для порта, к которому подключен сетевой адаптер ВМ.   |
| MAC address changes  |  Если гостевая ОС изменяет MAC-адрес виртуальной машины на значение, отличное от MAC-адреса сетевого адаптера виртуальной машины, коммутатор разрешает передачу кадров на новый адрес.   |
| Forged transmits  |  Коммутатор не выполняет фильтрацию и разрешает все исходящие кадры.   |

Это может быть необходимо в случае когда у вас есть перенастроенные сервисы и к ним необходим доступ из другой сети, а также пропускане трафика

![image](https://user-images.githubusercontent.com/79700810/154059357-af6994d9-3749-49ea-aff9-f525df4c8a52.png)


## Стандарт свитч
### [Документация](https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.networking.doc/GUID-350344DE-483A-42ED-B0E2-C811EE927D59.html)

Ключевой компонент виртуальной сетевой инфраструктуры vSphere - vSwitch, виртуальный L2 коммутатор.

В случае необходимости создания изолированого сегмента сети без для подключения к виртуальным машинам можно создать standard virtual switch без подключенного uplink

Переходим в Networking - > virtual swiches - > add standard virtual switc

![image](https://user-images.githubusercontent.com/79700810/154063180-4ff1ce40-8e73-4be0-bdd8-6cc24309976a.png)

## Порт группа
для подключения к виртуальным машинам standard virtual (vSW1) необходимо создать Networking - > Port groups - > Add port groups

![image](https://user-images.githubusercontent.com/79700810/154063942-9566bf69-f968-4809-898d-8fd9aaa7b395.png)

переходим в PG1 и видим что созданна группа которая не привязанна к физическому линку и не имеет доступа во внешнию сеть

![image](https://user-images.githubusercontent.com/79700810/154064820-971093fd-6eeb-4aa0-a376-a6fbeb770cf4.png)

также в случае необходимости можно переиминовать порт группу Networking - > Port groups - > Edit settings

![image](https://user-images.githubusercontent.com/79700810/154096014-858cc127-a442-4a8e-9efb-15e8da5a6cda.png)

