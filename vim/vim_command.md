
- [Основы](#osnovi)               
- [Поиск и замена в файле](#poisk)
- [Сворачивание](#svernut)
- [Маркеры](#mark)
- [Макросы](#mac)
- [Выделение](#select)
- [Нумерация строк](#nu)
- [Работа с вкладками](#tab)
- [Работа с окнами](#window)
- [Работа с кодировкой](#coder)

`~/.vimrc                   ` файл настройки    
`:e <path/to/the/file>      ` открыть файл    
`:ls                        ` список открытых буферов  
`:bufferN или :bN           ` переключиться на  буфер N  
`:reg                       ` просмотреть список регистров  
`:w или ZZ                  ` записать изменения     
`:wa                        ` сохранить изменения во всех файлах    
`:q                         ` выйти из редактора    
`:q! или ZQ                 ` выйти из редактора, не сохраняя изменения  
`:sav file                  ` сохранить буфер в file      
`:Ex или :e ./              ` файловый менеджер    
`:!команда                  ` выполнить внешную команду - man, git, и так далее    
`%!jq                       ` отформатировать json файл с помощью внешней улититы jq  
`:r <file>                  ` вставка файла    
`:r !команда                ` вставка вывода команды  
`vim +NUM file              ` открыть file, установить курсор на строку номер NUM  
`vim +/выражение file       ` открыть file, установить курсор на строку содержащую "выражение"  
`vim +"10d|x" file          ` удалить строку 10 в файле file   
`vim "+call cursor(<LINE>, <COLUMN>)" ` открыть файл, установив курсор в СТРОКУ и СТОЛБЕЦ  
`vim "+normal <LINE>G<COLUMN>|"       ` открыть файл, установив курсор в СТРОКУ и СТОЛБЕЦ   
` gf                        ` открыть файл под курсором go to file  

## <a id="osnovi">Основы</a>

` hjkl                       `  перемещение курсора       
` gg                         `  переход в начало файла    
` G                          `  переход в конец файла    
` <n>G                       `  переход на #n строку    
` :<n>                       `  перейти на строку #n  
` H                          `  переход в вверх экрана        
` L                          `  переход в низ экрана      
` M                          `  переход в середину экрана

` i                          `  режим вставки перед курсором     
` I                          `  добавление в начало строки   
` a                          `  режим добавления после курсора    
` A                          `  добавление в конец строки    
` o                          `  добавить строку сразу за текущей      
` O                          `  добавить строку перед текущей  
` ESC, CTRL-[                `  перейти в режим просмотра  

` x                          `  удалить символ под курсором справа       
` X                          `  удалить символ под курсором слева     
` r                          `  замена символа другим     
` s                          `  удалить символ и перейти в режим вставки    

` y                          `  дернуть (yank) скопировать  
` с                          `  изменить (changing)  
` d                          `  удалить (delete)  
  
` R                          `  писать поверх имеющегося текста    

` u, :u[ndo]                 `  отмена предыдущего действия (undo)    
` CTR-R, :red[o]             `  отмена отмены предыдущего действия (redo)    
` :earlier 2d                `  отмена изменений за последние 2 дня   
` :ea 3h                     `  отмена изменений за последние 3 часа  
` :ea 1m                     `  отмена изменений за последнюю 1 минуту  
` :later 5m                  `  повтор всех изменений за последние 5 минут  
` :lat 15s                   `  повтор всех изменений за последние 15 секунд  

` 0, ^ или $                 `  начало или конец строки    
` w,W                        `  начало слова (world), СЛОВА (WORLD)      
` e,E                        `  конец слова (end) или СЛОВА (END)   
` b,B                        `  начало пред. слова (before) или СЛОВА (BEFORE)  
` aw                         `  (полное) слово (a word)  
` iw                         `  внутреннее слово (inner word)  

` dl, dw, dd                 `  вырезать (удалить) символ, слово, строку  
` diw                        `  вырезать (удалить) текущее слово  
` dt)                        `  вырезать (удалить) до следующего символа )  
` d^, d$                     `  уладить от курсора до начала, конца строки    
` de                         `  удалить до конца слова без пробела        
` cc                         `  удалить строку и начать редактирование   
` ci"                        `  удалить внутри кавычек и начать редактирование   
` yw, yy                     `  скопировать слово, строку    
` p, P                       `  вставка из буфера обмена после курсора, до курсора    
` <n>dd                      `  удалить n строк    
` <n>yy                      `  скопировать n строк    
` CTR+u, CTR+d               `  Page Up / Page Down    
` CTR+y, CTR+e               `  Перемотка вверх/вниз без движения курсора   
` CTR+b, CTR+f               `  переход на экран вверх / вниз             
` Shift+~                    `  замена регистра буквы    
` .                          `  выполнение последнего действия    
` q:                         `  история команд      
` xp                         `  поменять символы местами    
` dwwP                       `  поменять местами слова    

## <a id="poisk">Поиск и замена в файле</a>

` *, #                       `  поиск слова под курсором   
` %                          `  переход к парной скобке (), [], {}   
` /Выражение                 `  поиск выражения в файле    
` \cВыражение                `  поиск без учета регистра    
` n                          `  следующее совпадение    
` N                          `  предыдущее совпадение   
` t                          `  поиск до символа (search until)    
` f                          `  поиск символа (find)   

` :n,m s/foo/bar/g           `  замена всех вхождений с #n по #m строки     
` :s/foo/bar/                `  замена первого вхождения в строке  
` :s/foo/bar/g               `  замена всех вхождений в строке    
` :%s/foo/bar/g              `  замена всех вхождений во всем файле    
` :%s/foo/bar/gi             `  замена всех строк без учета регистра во всем файле   
` :%s/foo/bar/gс             `  замена всех вхождений с подтвержением    
` :%s/\s\+$//e               `  замена пробелов в конце строк игнорировать ошибки во всем файле  
` :g/error/d                 `  удаление всех строк содержащих error  
` :g!/error/d                `  удаление всех строк не содержащих error  
` :g/^\s*$/d                 `  удаление всех пустых строк  
`:match ErrorMsg /Error/   `  найти все совпадения Error и выделить цветом (ErrorMsg - красный)    


## <a id="svernut">Сворачивание</a>  
` zc                        `  свернуть блок     
` zo                        `  развернуть блок     
` zM                        `  закрыть все блоки    
` zR                        `  открыть все блоки    
` za                        `  инвертирование    
` zf                        `  см :set foldmethod=manual    
` :set foldenable           `  включить свoрачивание    
` :set foldmethod=syntax    `  сворачивание на основе синтаксиса    
` :set foldmethod=indent    `  сворачивание на основе отступов    
` :set foldmethod=manual    `  выделяем участок с помощью v и говорим zf     
` :set foldmethod=marker    `  сворачивание на основе маркеров в тексте    
` :set foldmarker=bigin,end `  задаем маркеры начала и конца блока    

## <a id="mark">Маркеры</a>
` ma                        `  установить локальный маркер a    
` mB                        `  установить глобальный маркер B    
``` `c                        ```  перейти к локальному маркеру c    
``` `0                        ```  вернуться на позицию, на которой закончили работу при закрытии vim    
` :marks                    `  просмотр маркеров    
` set viminfo='1000,f1      `  маркеры пишутся в ~/.viminfo, восстанавливаясь при следующем запуске vim. маркер " хранит  последнюю позицию курсора в файле
                       
 ## <a id="mac">Макросы</a>
` qa                        `  записать макрос с именем a    
` q                         `  в режиме записи макроса: закончить запись    
` @a                        `  выполнить макрос с именем a    
` @@                        `  повторить последний макрос    

 ## <a id="select">Выделение</a>
` v + hjkl                  `  выделение текста    
` SHIFT + v                 `  выделить строку    
` CTR + v                   `  выделение прямоугольника    
` p                         `  вставить    
` y                         `  копировать    
` d                         `  удалить    
` gu                        `  к нижнему регистру    
` gU                        `  к верхнему регистру

## <a id="nu">Нумерация строк</a>

` :set number              `  включить нумерацию строк    
` :set nonumber            `  отключить нумерацию строк    

## <a id="tab">Работа с вкладками</a>
` :tabnew [fname]           `  создать таб    
` :tabs                     `  вывести список табов    
` :tabn                     `  следующий таб    
` :tabp                     `  предыдущий таб    
` <n>gt                     `  перейти на таб #n    
` gt, gT                    `  следующий / предыдущий таб    
` :tabm +1                  `  переместить таб вперед на одну позицию    
` :tabm -1                  `  переместить таб назад на одну позицию    
` :tabm 2                   `  переместить таб на заданную позицию  (нумерация начинается с нуля)         
                          

## <a id="window">Работа с окнами</a>
` vim -O file1 file2         `  открыть файлы в окнах с разделением по вертикали   
` vim -o file1 file2         `  открыть файлы в окнах с разделением по горизонтали     
` :split                     `  горизонтальное разбиение     
` :vsplit                    `  вертикальное разбиение    
` Ctr+w, затем               `    
`   с                        `  закрыть окно    
`   +-                       `  изменение высоты текущего окна    
`   <>                       `  изменение ширины текущего окна    
`   =                        `  установить равный размер окон    
`   hjkl или стрелочки       `  перемещение между окнами    

## <a id="coder">Работа с кодировкой</a>
` :e ++enc=<имя кодировки>            `  задать текущую кодировку кодировку просмотра       
` :set fileencoding=<имя кодировки>   `  изменить кодировку сохранения файла (utf-8, cp1251)  
` :set fileformat=<формат файла>      `  изменить формат файла (dos, unix или mac)  



