#SingleInstance Force
#MaxThreadsPerHotkey 3
; SendMode Input
; SetBatchLines -1
; SetWorkingDir %A_ScriptDir%

Toggle1 := False

#HotIf WinActive("ahk_exe RealmGrinderDesktop.exe")
^z:: {
    global
    Toggle1 := !Toggle1
    Loop
    {
        If (!Toggle1 or !WinActive("ahk_exe RealmGrinderDesktop.exe")) {
            Toggle1 := False
            Break
        }
            
        Click
        Sleep 83 ; Make this number higher for slower clicks, lower for faster.
    }
}

^x:: {
    Click   
}

#Hotif
^+Esc:: {
    ExitApp
}