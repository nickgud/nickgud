### Tmux - терминальный мультиплексор   

#### Описание
```bash
/etc/tmux.conf                                 # глобальный файл конфигурации  
~/.tmux.conf                                   # пользовательский файл конфигурации  
tmux source-file ~/.tmux.conf                  # обновление настроек в файле конфигурации  
set -g mouse on                                # включить мышку  
set-option -g default-terminal "tmux-256color" # установка режима терминала  
set-option -g history-limit 10000              # ограничить историю  
set-option -g status-position top              # изменить положение строки состояния вверх экрана  
```
#### Управление окнами и панелями  
```bash
Ctrl+b       # модификатор управления  
Ctrl+b ?     # справка по сочетанию клавиш  
Ctrl+b d     # отключиться от сессии  
Ctrl+b D     # отобразить список клиентов    

Ctrl+b c     # создать новое окно  
Ctrl+b &     # закрыть окно  
Ctrl-b w     # отобразить список всех окон с нумерацией

Ctrl+b q     # отобразить номера панелей  
Ctrl+b %     # разделить панель по вертикали  
Ctrl+b "     # разделить панель по горизонтали 
Ctrl+b →←↑↓  # навигация между панелями  
Ctrl+b x     # закрыть панель  
```
#### Копирование и вставка    
```bash
Ctrl+b [     # перейти в режим копирования   
→←↑↓         # переместить курсор к нужному месту  
Ctrl+Space   # начать выделение нужного фрагмента стрелками  
Ctrl+w       # скопировать выделенный фрагмент во внут. буфер обмена  
q, Esc       # выход из режима копирования 
Ctrl+b ]     # вставить из внутреннего буфера обмена 
Ctrl+b #     # просмотр списка скопированных текст. фрагментов 
Ctrl+b =     # выбор данных из буфера обмена tmux
 ```

#### Основные команды
###### `tmux new-session                       `  # (alias new) создать новую сессию
```console
          -A если сессия с таким именем уже сущ. подкл. к ней  
          -s задать идентификатор сессии  
          -с указать стартовую директорию  
```

###### `tmux attach-session                    ` # (alias attach) подключиться к существующей сессии  
  ```console
           -t идентификатор сессии  
           -с указать директорию  
           -d отключить других подключенных клиентов  
```
          
###### `tmux detach-client                     ` # (alias detach) отключить всех клиентов от сессии  
```console
         -t идентификатор клиента  
         -s идентификатор сессии  
 ```

###### `tmux kill-server                       ` # остановить сервер, закрыть все запущенные сессии, откл. клиентов  

###### `tmux kill-session                      ` # завершить сессию, закрыть окна, отключить всех клиентов этой сессии  
```console
         -t идентификатор сессии  
```

##### `tmux list-clients                       ` # (alias lsc) просмотреть клиентов, подключенных к сессии
```console
         -t идентификатор сессии  
````

##### `tmux list-sessions                     ` # (alias ls) вывести список запущенных сессий  

##### `tmux list-windows                      ` # вывести список окон  



