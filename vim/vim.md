
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
`:w или ZZ                  ` записать изменения     
`:wa                        ` сохранить изменения во всех файлах    
`:q                         ` выйти из редактора    
`:q! или ZQ                 ` выйти из редактора, не сохраняя изменения    
`:Ex или :e ./              ` файловый менеджер    
`:!команда                  ` выполнить внешную команду - man, git, и так далее    
`:r <file>                  ` вставка файла    
`:r !команда                ` вставка вывода команды  
` :help statusline          ` настройки строки статуса  

## <a id="osnovi">Основы</a>

` hjkl                       `  перемещение в разные стороны    
` i                          ` режим вставки перед курсором    
` I                          `  добавление в начало строки   
` a                          `  режим добавления после курсора    
` A                          `  добавление в конец строки    
` o                          `  добавить строку сразу за текущей      
` O                          `  добавить строку перед текущей  
` ESC, CTRL-[                `  перейти в режим просмотра    
` r                          `  замена символа    
` R                          `  писать поверх имеющегося текста    
` x                          `  удалить символ    
` u, :u[ndo]                 `  отмена предыдущего действия (undo)    
` CTR-R, :red[o]             `  отмена отмены предыдущего действия (redo)    
` gg                         `  переход в начало файла    
` G                          `  переход в конец файла    
` <n>G                       `  переход на #n строку    
` :<n>                       `  перейти на строку #n  
` H                          `  переход в вверх экрана        
` L                          `  переход в низ экрана      
` M                          `  переход в середину экрана    
` dl, dw, dd                 `  вырезать (удалить) символ, слово, строку  
` diw                        `  вырезать (удалить) текущее слово    
` d^, d$                     `  уладить от курсора до начала, конца строки    
` de                         `  удалить до конца слова без пробела        
` cc                         `  удалить строку и начать редактирование        
` yw, yy                     `  копировать слово, строку    
` p, P                       `  вставить из буфера обмена после курсора, до курсора    
` <n>dd                      `  удалить n строк    
` <n>yy                      `  скопировать n строк    
` CTR+u, CTR+d               `  Page Up / Page Down    
` CTR+y, CTR+e               `  Перемотка вверх/вниз без движения курсора   
` CTR+b, CTR+f               `  переход на экран вверх / вниз             
` Shift+~                    `  замена регистра буквы    
` .                          `  выполнение последнего действия    
` q:                         `  история команд      
` :set list                  `  отображать табуляцию и переводы строк   
` :set nolist                `  не отображать табуляцию и переводы строк  
` xp                         `  поменять символы местами    
` dwwP                       `  поменять местами слова    
` 0 или ^, $                 `  в начало, конец строки    
` w                          `  переход к началу слова    
` e                          `  переход к концу слова    
` b                          `  переход назад    

## <a id="poisk">Поиск и замена в файле</a>

` *, #                       `  поиск слова под курсором   
` %                          `  перейти к парной скобке  
` /Выражение                 `  поиск выражения в файле    
` \cВыражение                `  поиск без учета регистра    
` n                          `  следующее совпадение    
` N                          `  предыдущее совпадение    
` :n,m s/foo/bar/g           `  замена всех вхождений с #n по #m строки     
` :%s/foo/bar/g              `  замена всех вхождений    
` :%s/foo/bar/gi             `  замена строк без учета регистра    
` :%s/foo/bar/gс             `  замена всех вхождений с подтвержением    
` :%s/\s\+$//e               `  удалить пробелы в конце строк игнорировать ошибки      

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
` :split                     `  горизонтальное разбиение     
` :vsplit                    `  вертикальное разбиение    
` Ctr+W, затем               `    
`   с                        `  закрыть окно    
`   +-                       `  изменение высоты текущего окна    
`   <>                       `  изменение ширины текущего окна    
`   =                        `  установить равный размер окон    
`   hjkl или стрелочки       `  перемещение между окнами    

## <a id="coder">Работа с кодировкой</a>
` :e ++enc=<имя кодировки>            `  задать текущую кодировку кодировку просмотра       
` :set fileencoding=<имя кодировки>   `  изменить кодировку сохранения файла (utf-8, cp1251)  
` :set fileformat=<формат файла>      `  изменить формат файла (dos, unix или mac)  



