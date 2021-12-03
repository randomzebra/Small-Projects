
Path := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
GamePath := "A:\(A)Library\SteamLibrary\steamapps\common\Leaf Blower Revolution\game.exe"
;WinActivate, ahk_exe %Path%
WinGetPos,,, x, y, ahk_exe %gamePath%,,,
Gui, 1:Add, Text,, On %x% %y%
Gui, 1:Show
Return


+^esc::
ExitApp
