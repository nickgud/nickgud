- [Сброс пароля Ubuntu из режима восстановления (recovery mode)](#rezim1)  
- [Альтернативный метод сброса пароля Ubuntu](#rezim2)  

## <a id="rezim1">Сброс пароля из recovery mode</a>  
- В меню grub выберать Advanced Options for Ubuntu
- перейти в режим восстановления (recovery mode)
- в меню восстановления выбрать «Root Drop to root shell prompt» («Перейти в командный интерпретатор суперпользователя»). После этого у вас внизу появится командная строка.
- перемонтировать корневой каталог с правами на запись (по умолчанию доступ только для чтения)  
` mount -rw -o remount / `
- сбросить имя пользователя или пароль утилитой passwd. Система запросит новый пароль и подтверждение.  
  ` passwd <username> `
- выйти из командной строки `exit `,  вернуться в меню режима восстановления и выбрать нормальный режим загрузки ` Resume `.  

## <a id="rezim2">Альтернативный метод сброса пароля Ubuntu</a>  
заключается во временной замене процесса init на оболочку bash. Это позволяет получить root-доступ без необходимости вводить пароль.  
- перезагрузить систему удерживая Shift, чтобы открыть экран grub.
- зайти в режим редактирования конфигурации GRUB2, нажав на клавишу 'e' в меню загрузчика
- отредактировать конфигурацию загрузчика, найти строку, начинающуюся со слова linux, измените ro на rw и добавьте в конец строки init=/bin/bash.
- нажать Ctrl-X или F10, чтобы сохранить изменения и загрузиться.
- изменить пароль утилитой passwd. Система запросит новый пароль и подтверждение.    
  ` passwd <username> `
- выполнить команду ` exec /sbin/init ` команда exec заменит код процесса оболочки программой системы инициализации.
- после логина запустите команду `update-grub ` для исправления конфигурации загрузчика.
  
