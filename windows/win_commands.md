  ---
###### ping    
```    
ping -l 192.168.1.2    задает размер пакета  
ping -a 192.168.1.2    обратное разрешение имени на IP 
ping -t 192.168.1.2    непрерывный вывод команды  
ping -n 3 192.168.1.2  количество отправляемых запросов
```    
---  
###### ipconfig  
```
ipconfig /all        отображение инфо о всех сетевых картах
ipconfig /flushdns   очистка локального кеша DNS
ipconfig /renew      обновление DHCP-адреса
ipconfig /displaydns вывод кеша DNS  
```
---  
###### nslookup  проверка записей DNS
```
ipconfig /all        отображение инфо о всех сетевых картах
ipconfig /flushdns   очистка локального кеша DNS
ipconfig /renew      обновление DHCP-адреса
ipconfig /displaydns вывод кеша DNS  
```
---  
###### netstat отображение сетевых подключений    
```  
netstat -a          отображение активных и прослушиваемых портов
netstat -n          отображение адресов в числовой форме
netstat -e          отображение статистики
netstat -r          отображение локальной таблицы маршрутизации
netstat -b          отображение исполняемого файла  

```  
---  
###### dcdiag проверка контроллера домена       
```  
dcdiag /s:DC1       проверка DC1  

```
---  
###### net stop и net start (службы windows)    
```  
net stop spooler    остановка службы spooler
net start spooler   запуск службы spooler    
```

###### getmac  выводит MAC-адреса всех сетевых карт
```  
getmac /v               
       
```

######   systeminfo   сведения о конйигурции, ОС, оборудовании
```  
systeminfo | Select-String "^OS Name","^OS Version", "^System Boot Time"
systeminfo /fo CSV > c:\systeminfo.csv  сохранение вывода в файл  
systeminfo /s pc1   выполнение на удаленном ПК pc1  
```  
######  gpresult результаты GPO  
```  
gpresult /r                   отчет о GPO, прим для польз-ля и ПК  
gpresult /r /scope:user       отчет о GPO, прим. к пользователю  
gpresult /r /scope:computer   отчет о GPO, прим. к пользователю         
gpresult /s pc1               отчет о GPO, прим. для удаленного ПК pc1
gpresult /h c:\report.html    сождание отчета в формате html  
```  
######     
```  
net stop spooler    остановка службы spooler
       
```  
######     
```  
net stop spooler    остановка службы spooler
       
```  
######     
```  
net stop spooler    остановка службы spooler
       
```  
######     
```  
net stop spooler    остановка службы spooler
       
```  
######     
```  
net stop spooler    остановка службы spooler
       
```  

