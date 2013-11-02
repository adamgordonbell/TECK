; top of file (before loading any other .ahk)
SetTitleMatchMode 2
#InstallKeybdHook 

;; left shift becomes tab if pressed by its self
LShift::
Send {Shift Down}
KeyWait, LShift
Send {Shift Up}
if ( A_PriorKey = "LShift" )
{
	Send {Tab}
}
return

; Lshift works for Ctrl tab as well
LCtrl & LShift::
;MsgBox ctrold tab
Send ^{Tab}
return

; Lshift works for Alt tab as well
LAlt & LShift::
Send !{Tab}
return

;; right shift becomes enter if pressed by itself
RShift::
Send {Shift Down}
KeyWait, RShift
Send {Shift Up}
if ( A_PriorKey = "RShift" )
{
	Send {Enter}
}
return

;; left control becomes esc if pressed by itself (for VIM)
;; I used caps lock as escape with standard keyboards
LCtrl::
Send {Ctrl Down}
KeyWait, LCtrl
Send {Ctrl Up}
if ( A_PriorKey = "LControl" )
{
	Send {Esc}
}
return


;; delete becomes backspace
;; this can and probably should be done with the teck firmware
Del::
Send {Backspace}
return