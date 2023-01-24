#SingleInstance Force
#MaxThreadsPerHotkey 3
; SendMode Input
; SetBatchLines -1
; SetWorkingDir %A_ScriptDir%

Toggle1 := False
Toggle := False
global Width := 0
global Height := 0
global MyGui := Gui("+Resize +MinSize150x25", "Background Click Status",)
controlObj := MyGui.Add("Text" ,,"Off")
controlObj.Name := "OnOffDisplay"

SetControlDelay -1
WinGetPos ,, &Width, &Height, "Realm Grinder"
global Width := (3*Width)/5
global Height := (4*Height)/6
MyGui.Add("Text",,"Width " . Width . "`rHeight " . Height)
MyGui.Add("Text",,controlObj.Name)
MyGui.Show()
Return

^m:: {
    global
    Toggle := True
    MyGui["OnOffDisplay"].Text := "On"
    loop {
        if not Toggle {
            Break
        }
        ControlClick "X" . Width . " Y" . Height, "ahk_exe RealmGrinderDesktop.exe", , "LEFT"
        Sleep 30
    }
    
}   

^+m:: { 
    global
    Toggle := False
    MyGui["OnOffDisplay"].Text := "Off"
    MyGui.Show("AutoSize")
    ;gui stuff here
    Return
}
^+Esc:: {
    ExitApp
}

^z:: {
    global
    Toggle1 := !Toggle1
    Loop
    {
        If (!Toggle1)
            Break
        Click
        Sleep 83 ; Make this number higher for slower clicks, lower for faster.
    }
}
