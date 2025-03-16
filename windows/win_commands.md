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
###### Net stop и net start (службы windows)    
```  
net stop spooler    остановка службы spooler
net start spooler   запуск службы spooler    
```
