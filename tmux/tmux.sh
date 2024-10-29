#!/usr/bin/env bash
#
#
#Author: Gudkov N.
#Date: 2024-10-28
#
#==============================================================#
#    Подключение к сесии tmux с именем пользователя            #
#    или создание новой сессии c 2 окнами                      #
#==============================================================#


# Проверяем установлен ли tmux в системе
if ! command -v tmux; then
    echo  "Tmux не установлен в системе..."
    exit 1		
fi

# Объявляем переменные
SESSION="$USER" # имя сессии
WINDOW1="dev" # имя первого окна
WINDOW2="console" # имя второго окна

# Проверяем запущена ли сессия '$SESSION' 
if ! tmux has-session -t $SESSION; then
    # создаем новую сессию не подключаясь 
    tmux new -s $SESSION -n $WINDOW1 -d
    # разделяем окно по вертикали 
    tmux split-window -v -l 50% -t $SESSION:$WINDOW1
    # разделяем окно по горизонтали 
    tmux split-window -h -l 50% -t $SESSION:$WINDOW1.1
    # передаем команду в 0 панель 
    tmux send-keys -t $SESSION:$WINDOW1.0 'vim' C-m
    # передаем команду в 1 панель 
    tmux send-keys -t $SESSION:$WINDOW1.1 'who' C-m
    # передаем команду во 2 панель
    tmux send-keys -t $SESSION:$WINDOW1.2 'journalctl -b' C-m
    # создаем новое окно
    tmux neww -a -n $WINDOW2 -t $SESSION -d
    # обновляем файл конфигурации
    tmux source-file ~/.tmux.conf
    # переключаемся на окно $WINDOW1
    # tmux select-window -t $SESSION:$WINDOW1
fi

# подключаемся к сессии  '$SESSION'
tmux attach -t $SESSION

