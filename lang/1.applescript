-- Отображение диалогового окна с приветствием
display dialog "Hello, World!" buttons {"OK"} default button "OK"

-- Получение имени текущего пользователя
set theUser to short user name

-- Вывод сообщения с именем пользователя
display dialog "Hello, " & theUser & "!" buttons {"OK"} default button "OK"

-- Открытие приложения Finder
tell application "Finder"
    activate
end tell

-- Получение списка файлов в папке "Documents"
tell application "Finder"
    set theFiles to files of folder "Documents" of home
    -- Вывод количества файлов
    display dialog "Number of files in Documents folder: " & (count of theFiles) buttons {"OK"} default button "OK"
end tell
