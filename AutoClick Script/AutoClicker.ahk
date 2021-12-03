#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


Toggle := False
Path := "A:\(A)Library\SteamLibrary\steamapps\common\Leaf Blower Revolution\game.exe"
X :=
y :=
WinGetPos,,, x, y, ahk_exe %Path%,,,
x := (x/2)
y := (y/2)
Gui, 1:Add, Text,, On %x% %y%
Gui, 2:Add, Text,, Off
Return



^m:: 
global x
global y
Gui 1:Show
Gui 2:Hide
Toggle := True
While Toggle {
    
    ControlClick, X%x% Y%y%, ahk_exe %Path%,,,, NA Pos
    Sleep, 6500
    if (!Toggle) {
        break
    }

}
    
Return

+^m::
Gui 2:Show
Gui 1:Hide
Toggle := False
Return

+^esc::
ExitApp