#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SetKeyDelay, 0, 50
ToggleShift := False
ToggleSpace := False
Path := "javaw.exe"
Return



^m:: 
ToggleShift := True
While ToggleShift {
    
    ControlSend,ahk_parent, {ShiftDown}{ShiftUp}, ahk_exe %Path%,,,
    Sleep, 10
    if (!ToggleShift) {
        break
    }

}
return

^':: 
ToggleSpace := True
While ToggleSpace {
    
    ControlSend,ahk_parent, {Space}, ahk_exe %Path%,,,
    Sleep, 10
    if (!ToggleSpace) {
        break
    }

}
    
Return

+^'::
ToggleSpace := False
Return

+^m::
ToggleShift := False
Return

+^esc::
ExitApp