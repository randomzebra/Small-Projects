;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, 1:Add, Text,, "On"
Gui, 2:Add, Text,, "Off"
Toggle = False
Width = 0
Height = 0
; WinGetPos,,, Width, Height, ahk_exe D:\Big games\steamapps\common\Leaf Blower Revolution\game.exe,,,
WinGetPos,,, Width, Height, ahk_exe C:\Program Files (x86)\Steam\steamapps\common\Realm Grinder,,,
Width = Widht/2
Height = Height =2
Return

^m::
Gui, 2:Hide
Gui, 1:Show
global Toggle = True
global Width
global Height
loop {
    if not Toggle {
        Break
    }
    ControlClick, X%Width% Y%Height%, ahk_exe D:\Big games\steamapps\common\Leaf Blower Revolution\game.exe,,,,NA 
    sleep 6200
    
}
Return

^+m::
global Toggle = False
Gui, 1:Hide
Gui, 2:Show
Return

^+Esc::
ExitApp







