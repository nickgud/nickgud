" НАСТРОЙКА ВНЕШНЕГО ВИДА И БАЗОВЫЕ НАСТРОЙКИ РЕДАКТОРА
"set foldcolumn=1 " отступ слева 1 пробела
set nocompatible " отключить совместимость с vi
set number " включить нумерацию строк
set relativenumber number " модификация нумерации строк
"set cursorcolumn " подсветка текущего столбца
filetype on " включение отпределения типа файла
set nowrap " отключение перноса длинных строк
set visualbell " визуально выделить если ошибка ввода
set showcmd " показать не завершенную команду
"set list " показать символы форматирования
set showmatch " показать первую парную скобку после ввода второй
set confirm " диалог вместо сообщения об ошибке

" ФОРМАТ СТРОКИ СОСТОЯНИЯ
"set cmdheight=2 " высота комадной строки 2 линии
set laststatus=2 " всегда показывать строку состояния
set statusline=%.40F%m%r\ %y
" доп инфо в строке состояния с выравниванием справа
set statusline+=\ %{&fileencoding}[%{&fileformat}]%=line:\%3l/%3L\ col:\%2c\ [%2p%%]

" ДОП НАСТРОЙКИ
" замена табуляции \t на 4 пробела
set expandtab " включает замену табов на пробелы
set smarttab " при нажатии таба в начале строки добавляет shiftwidth пробелов
set shiftwidth=4 " размер отступов (нажатие на << или >>)
set tabstop=4 " ширина табуляции
set mouse=a " включить мышку

" НАСТРОЙКА КОДИРОВКИ
set encoding=utf-8                                  " установить кодировку отображения 
"set termencoding=utf-8                              " set terminal encoding
set fileencoding=utf-8                              " set save encoding
set fileencodings=utf8,koi8r,cp1251,cp866,ucs-2le   " список предполагаемых кодировок, в порядке предпочтения

