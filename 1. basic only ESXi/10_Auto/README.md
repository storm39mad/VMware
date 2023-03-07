# ВВЕДЕНИЕ


# Цель
1) Создание стенда ДЭ средствами автоматизации terraform и powercli

## Перед началом

![image](https://user-images.githubusercontent.com/79700810/154932749-20c23019-5231-47c8-8d1f-7c8c71226eff.png)

## Установка плагинов
```powershell
powershell Start-Process powershell -Verb runAs
```

![image](https://user-images.githubusercontent.com/79700810/154459071-660b7527-0e1c-498b-bcdc-8d4ef30e71de.png)

## Установка Chocolatey 

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
## Установка terraform 
```powershell
choco install terraform
```
## Установка git
```powershell
choco install git
```
## Установка vs code
```powershell
choco install vscode
```
## Установка powercli
```powershell
choco install vmware-powercli-psmodule
Set-PowerCLIConfiguration -Scope AllUsers -ParticipateInCeip $true
```

## Клонирование репозитория
```powershell
cd C:\
git clone https://github.com/storm39mad/VMware.git
```

![image](https://user-images.githubusercontent.com/79700810/154930311-80c168f0-7d4f-4f5b-acde-82524ec16c74.png)



![image](https://user-images.githubusercontent.com/79700810/154930473-924186a0-0eaf-40d0-b1c7-4748714391ed.png)


![image](https://user-images.githubusercontent.com/79700810/154930502-210169b4-7966-472f-b1fd-c545c32a6037.png)


![image](https://user-images.githubusercontent.com/79700810/154930555-beee1aee-9d8c-4b65-886a-f338c6a86f40.png)

![image](https://user-images.githubusercontent.com/79700810/154930669-e5ae9b9b-9d58-4f09-a9c0-73f63465b406.png)


![image](https://user-images.githubusercontent.com/79700810/154931006-b852b787-4a5c-46c5-9b26-3a024924ec78.png)

![image](https://user-images.githubusercontent.com/79700810/154931110-a9b89500-66b0-47d1-8728-1d11505b7778.png)

![image](https://user-images.githubusercontent.com/79700810/154932021-34ec0d2a-7182-4a3e-99c2-2554666c51e6.png)


![image](https://user-images.githubusercontent.com/79700810/154931863-58f0a408-1dbc-44e5-8415-94aa6ec5bc00.png)


![image](https://user-images.githubusercontent.com/79700810/154931415-d82c4fab-4dd7-46f0-9b1e-299210d22963.png)

![image](https://user-images.githubusercontent.com/79700810/154931547-b93395ed-139e-4e27-af4a-01bccfd2a25f.png)

![image](https://user-images.githubusercontent.com/79700810/154932491-27b2b6a9-8d2c-4af3-b3b6-86060c88da5f.png)

