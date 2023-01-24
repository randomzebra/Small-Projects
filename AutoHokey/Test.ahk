#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Loop{
    ControlClick, X900 Y480, ahk_exe D:\Big games\steamapps\common\Leaf Blower Revolution\game.exe,,,,NA 
    sleep 10000
}


